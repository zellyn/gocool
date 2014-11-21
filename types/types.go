package types

import (
	"errors"
	"fmt"
	"os"

	"github.com/zellyn/gocool/parser"
)

// Built-in types that may not be redefined.
var BuiltinTypes = map[string]bool{
	"Object":    true,
	"Bool":      true,
	"Int":       true,
	"String":    true,
	"IO":        true,
	"SELF_TYPE": true,
}

// Types that may not be inherited from.
var NoInherit = map[string]bool{
	"Bool":      true,
	"String":    true,
	"Int":       true,
	"SELF_TYPE": true,
}

func traceDepths(typename string, children map[string][]string, classes map[string]*parser.Class, depth int) error {
	// fmt.Printf("%s: %v\n", typename, children[typename])
	for _, childName := range children[typename] {
		child := classes[childName]
		if child.Depth != 0 {
			return fmt.Errorf("circular inheritance involving %s", typename)
		}
		child.Depth = depth
		if err := traceDepths(child.Name, children, classes, depth+1); err != nil {
			return err
		}
	}
	return nil
}

func Check(program *parser.Program) error {
	err := false
	hasMain := false
	classes := map[string]*parser.Class{}
	children := map[string][]string{}

	builtins := Builtins()

	for _, cl := range builtins {
		classes[cl.Name] = cl
		if cl.Name != "Object" {
			children[cl.Parent] = append(children[cl.Parent], cl.Name)
		}
	}

	for _, cl := range program.Classes {
		hasMain = hasMain || cl.Name == "Main"
		errHere := false
		if BuiltinTypes[cl.Name] {
			fmt.Fprintf(os.Stderr, "%s:%d: Redefinition of basic class %s.\n", cl.Filename, cl.Line, cl.Name)
			err = true
			errHere = true
		} else if _, nok := classes[cl.Name]; nok {
			fmt.Fprintf(os.Stderr, "%s:%d: Class %s was previously defined.\n", cl.Filename, cl.Line, cl.Name)
			err = true
			errHere = true
		}

		if NoInherit[cl.Parent] {
			fmt.Fprintf(os.Stderr, "%s:%d: Class %s cannot inherit class %s.\n", cl.Filename, cl.Line, cl.Name, cl.Parent)
			err = true
			errHere = true
		}
		if !errHere {
			classes[cl.Name] = cl
			children[cl.Parent] = append(children[cl.Parent], cl.Name)
		}
	}

	if !hasMain {
		fmt.Fprintf(os.Stderr, "Class Main is not defined.\n")
		err = true
	}

	if err2 := traceDepths("Object", children, classes, 1); err2 != nil {
		fmt.Fprintf(os.Stderr, "Found cycle\n")
		err = true
	}
	if err {
		return errors.New("Compilation halted due to static semantic errors.")
	}
	return nil
}
