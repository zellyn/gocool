package types

import (
	"errors"
	"fmt"
	"os"

	"github.com/zellyn/gocool/parser"
)

var theErr = errors.New("Compilation halted due to static semantic errors.")

// Built-in types that may not be redefined.
var builtinTypes = map[string]bool{
	"Object":    true,
	"Bool":      true,
	"Int":       true,
	"String":    true,
	"IO":        true,
	"SELF_TYPE": true,
}

// Types that may not be inherited from.
var noInherit = map[string]bool{
	"Bool":      true,
	"String":    true,
	"Int":       true,
	"SELF_TYPE": true,
}

type classes map[string]*parser.Class

// traceDepths traces out the tree of objects, starting at Object, and
// assigning a depth (Object=1, its children 2, etc.). Any object that
// lacks a depth must have an undefined parent, or a cycle.
func (cs classes) traceDepths(typ string, children map[string][]string, depth int) {
	// fmt.Printf("%s: %v\n", typ, children[typ])
	for _, childName := range children[typ] {
		child := cs[childName]
		child.Depth = depth
		cs.traceDepths(child.Name, children, depth+1)
	}
}

// findMethod finds the nearest definition of methodName, starting
// with type typ, climbing the parent chain until it finds it.
func (cs classes) findMethod(typ string, methodName string) (*parser.Class, *parser.Method) {
	c, ok := cs[typ]
	if !ok {
		return nil, nil
	}
	for _, m := range c.Methods {
		if m.Name == methodName {
			return c, m
		}
	}
	if typ == "Object" {
		return nil, nil
	}
	return cs.findMethod(c.Parent, methodName)
}

// findAttr finds the nearest definition of attrName, starting
// with type typ, climbing the parent chain until it finds it.
func (cs classes) findAttr(typ string, attrName string) (*parser.Class, *parser.Attr) {
	c, ok := cs[typ]
	if !ok {
		return nil, nil
	}
	for _, a := range c.Attrs {
		if a.Name == attrName {
			return c, a
		}
	}
	if typ == "Object" {
		return nil, nil
	}
	return cs.findAttr(c.Parent, attrName)
}

// checkInterfaces checks that the defined interfaces of classes obey the rules:
// 1. No inheritance from undefined classes.
// 2. No attributes whose type is undefined.
// 3. No attributes with the name 'self'
// 4. No methods whose type is undefined.
// 5. No method arguments with type SELF_TYPE.
// 6. No method arguments with the same names.
// 7. No method arguments with the name 'self'.
// 8. No redefinition of attributes.
// 9. No redefinition of methods with different signatures.
func (cs classes) checkInterfaces() (hasErr bool) {
	for name, c := range cs {
		if builtinTypes[name] {
			continue
		}

		// No inheritance from undefined classes.
		_, ok := cs[c.Parent]
		if !ok {
			hasErr = true
			fmt.Fprintf(os.Stderr, "%s:%d: Class %s inherits from an undefined class %s.\n", c.Filename, c.Line, c.Name, c.Parent)
		}

		// Iterate over Attributes
		attrs := make(map[string]bool)
		for _, attr := range c.Attrs {
			// No attributes whose type is undefined.
			_, ok := cs[attr.Type]
			if !ok {
				hasErr = true
				fmt.Fprintf(os.Stderr, "%s:%d: Attribute %s.%s has undefined type %s.\n", c.Filename, attr.Line, c.Name, attr.Name, attr.Type)
				continue
			}

			// No attributes with the name 'self'.
			if attr.Name == "self" {
				hasErr = true
				fmt.Fprintf(os.Stderr, "%s:%d: 'self' cannot be the name of an attribute.\n", c.Filename, attr.Line)
				continue
			}

			// No redefinition of attributes (within the same class)
			if attrs[attr.Name] {
				fmt.Fprintf(os.Stderr, "%s:%d: Attribute %s is multiply defined in class %s.\n", c.Filename, attr.Line, attr.Name, c.Name)
			}
			attrs[attr.Name] = true

			// No redefinition of attributes (from parent classes)
			if c2, a2 := cs.findAttr(c.Parent, attr.Name); c2 != nil {
				hasErr = true
				fmt.Fprintf(os.Stderr, "%s:%d: Attribute %s.%s is already defined in class %s at %s:%d.\n", c.Filename, attr.Line, c.Name, attr.Name, c2.Name, c2.Filename, a2.Line)
			}
		}

		// Iterate over Methods
		for _, method := range c.Methods {
			// No methods whose type is undefined.
			_, ok := cs[method.Type]
			if !ok {
				hasErr = true
				fmt.Fprintf(os.Stderr, "%s:%d: Method %s.%s has undefined type %s.\n", c.Filename, method.Line, c.Name, method.Name, method.Type)
				continue
			}

			// No redefinition of methods with different signatures.
			if c2, m2 := cs.findMethod(c.Parent, method.Name); c2 != nil {
				if method.Type != m2.Type {
					hasErr = true
					fmt.Fprintf(os.Stderr, "%s:%d: Method %s.%s has type %s here, but type %s in class %s at %s:%d.\n", c.Filename, method.Line, method.Type, m2.Type, c2.Name, c2.Filename, m2.Line)
				}
				if len(method.Formals) != len(m2.Formals) {
					hasErr = true
					fmt.Fprintf(os.Stderr, "%s:%d: Method %s.%s has %d formals here, but %d in class %s at %s:%d.\n", c.Filename, method.Line, c.Name, method.Name, len(method.Formals), len(m2.Formals), c2.Name, c2.Filename, m2.Line)
				} else {
					for i, f := range method.Formals {
						if f.Type != m2.Formals[i].Type {
							hasErr = true
							fmt.Fprintf(os.Stderr, "%s:%d: In method %s.%s, formal %d (%s) has type %s, but type %s in class %s at %s:%d.\n", c.Filename, method.Line, c.Name, method.Name, i, f.Name, f.Type, m2.Formals[i].Type, c2.Name, c2.Filename, m2.Line)
						}
					}
				}

			}

			// No method arguments with type SELF_TYPE.
			// No method arguments with the name 'self'.
			// No method arguments with the same names.
			names := make(map[string]bool)
			for _, f := range method.Formals {
				if f.Type == "SELF_TYPE" {
					hasErr = true
					fmt.Fprintf(os.Stderr, "%s:%d: Formal parameter %s cannot have type %s.\n", c.Filename, method.Line, f.Name, f.Type)
				}
				if f.Name == "self" {
					hasErr = true
					fmt.Fprintf(os.Stderr, "%s:%d: 'self' cannot be the name of a formal parameter.\n", c.Filename, method.Line)
				}
				if names[f.Name] {
					hasErr = true
					fmt.Fprintf(os.Stderr, "%s:%d: Formal parameter %s is multiply defined.\n", c.Filename, method.Line, f.Name)
				}
				names[f.Name] = true
			}

		}
	}
	return hasErr
}

func Check(program *parser.Program) error {
	program.SplitFeatures()

	err := false
	hasMain := false
	cs := make(classes)
	children := map[string][]string{}

	builtins := Builtins()

	for _, cl := range builtins {
		cs[cl.Name] = cl
		if cl.Name != "Object" {
			children[cl.Parent] = append(children[cl.Parent], cl.Name)
		}
	}

	for _, cl := range program.Classes {
		hasMain = hasMain || cl.Name == "Main"
		errHere := false
		if builtinTypes[cl.Name] {
			fmt.Fprintf(os.Stderr, "%s:%d: Redefinition of basic class %s.\n", cl.Filename, cl.Line, cl.Name)
			err = true
			errHere = true
		} else if _, nok := cs[cl.Name]; nok {
			fmt.Fprintf(os.Stderr, "%s:%d: Class %s was previously defined.\n", cl.Filename, cl.Line, cl.Name)
			err = true
			errHere = true
		}

		if noInherit[cl.Parent] {
			fmt.Fprintf(os.Stderr, "%s:%d: Class %s cannot inherit class %s.\n", cl.Filename, cl.Line, cl.Name, cl.Parent)
			err = true
			errHere = true
		}
		if !errHere {
			cs[cl.Name] = cl
			children[cl.Parent] = append(children[cl.Parent], cl.Name)
		}
	}

	if !hasMain {
		fmt.Fprintf(os.Stderr, "Class Main is not defined.\n")
		err = true
	}

	cs.traceDepths("Object", children, 1)

	err = err || cs.checkInterfaces()

	if err {
		return theErr
	}
	return nil
}
