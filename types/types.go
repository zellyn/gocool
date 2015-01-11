package types

import (
	"errors"
	"fmt"
	"os"

	"github.com/zellyn/gocool/parser"
	"github.com/zellyn/gocool/symbols"
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

// findMethod finds the nearest definition of methodName, starting
// with type typ, climbing the parent chain until it finds it.
func findMethod(cs parser.Classes, typ string, methodName string) (*parser.Class, *parser.Method) {
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
	return findMethod(cs, c.Parent, methodName)
}

// findAttr finds the nearest definition of attrName, starting
// with type typ, climbing the parent chain until it finds it.
func findAttr(cs parser.Classes, typ string, attrName string) (*parser.Class, *parser.Attr) {
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
	return findAttr(cs, c.Parent, attrName)
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
// 10. No methods named "_init".
func checkInterfaces(cs parser.Classes) (hasErr bool) {
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
			if !ok && attr.Type != "SELF_TYPE" {
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
			if c2, a2 := findAttr(cs, c.Parent, attr.Name); c2 != nil {
				hasErr = true
				fmt.Fprintf(os.Stderr, "%s:%d: Attribute %s.%s is already defined in class %s at %s:%d.\n", c.Filename, attr.Line, c.Name, attr.Name, c2.Name, c2.Filename, a2.Line)
			}
		}

		// Iterate over Methods
		for _, method := range c.Methods {
			// No methods named _init.
			if method.Name == "_init" {
				hasErr = true
				fmt.Fprintf(os.Stderr, "%s:%d: Illegal method name _init.\n", c.Filename, method.Line)
				continue
			}
			// No methods whose type is undefined.
			_, ok := cs[method.Type]
			if !ok && method.Type != "SELF_TYPE" {
				hasErr = true
				fmt.Fprintf(os.Stderr, "%s:%d: Method %s.%s has undefined type %s.\n", c.Filename, method.Line, c.Name, method.Name, method.Type)
				continue
			}

			// No redefinition of methods with different signatures.
			if c2, m2 := findMethod(cs, c.Parent, method.Name); c2 != nil {
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
							fmt.Fprintf(os.Stderr, "%s:%d: In redefined method %s, parameter type %s is different from original type %s\n", c.Filename, method.Line, method.Name, f.Type, m2.Formals[i].Type)

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

// Lub computes the "least upper bound" of the two given types. t1 is
// allowed to be "SELF_TYPE" (which is the reason for passing cl), but
// t2 is not.
func Lub(cs parser.Classes, cl, t1, t2 string) string {
	if t1 == t2 {
		return t1
	}
	if t2 == "SELF_TYPE" {
		t2 = cl
	}
	cur := t1
	if t1 == "SELF_TYPE" {
		cur = cl
	}
	seen := make(map[string]bool)
	for {
		seen[cur] = true
		if cur == "Object" {
			break
		}
		cur = cs[cur].Parent
	}
	cur = t2
	for {
		if seen[cur] {
			return cur
		}
		cur = cs[cur].Parent
	}
}

// lte computes whether t1 is "less than or equal to" t2 for the two
// given types. If t2 is SELF_TYPE, return true only if t1 is too.
func lte(cs parser.Classes, cl, t1, t2 string) bool {
	if t2 == "SELF_TYPE" {
		return t1 == "SELF_TYPE"
	}
	cur := t1
	if t1 == "SELF_TYPE" {
		cur = cl
	}
	for {
		if cur == t2 {
			return true
		}
		if cur == "Object" {
			return false
		}
		cur = cs[cur].Parent
	}
}

// findSymbol takes a class name, a symbol name, and a symbol
// table. It tries to find the type of the given symbol, looking first
// in the symbol table, and then in the attribute definitions of the
// class and its parents. If it finds the symbol, it returns its type,
// and true. Otherwise, it returns false.
func findSymbol(cs parser.Classes, cl string, symbol string, table symbols.Table) (typ string, ok bool) {
	if entry, ok := table.Get(symbol); ok {
		return entry.Type, true
	}
	if _, a := findAttr(cs, cl, symbol); a != nil {
		return a.Type, true
	}
	return "", false
}

// checkAttribute typechecks an attribute definition. It returns an error boolean.
func checkAttribute(cs parser.Classes, cl *parser.Class, a *parser.Attr) (err bool) {
	if a.Init.Op == parser.NoExpr {
		return false
	}
	t_0 := a.Type
	var t_1 string
	t_1, err = checkExpression(cs, cl, a.Init, symbols.Table{})
	if !lte(cs, cl.Name, t_1, t_0) {
		err = true
		fmt.Fprintf(os.Stderr, "%s:%d: Initialization expression for %s.%s has type %q, but attribute has declared type %q.\n", cl.Filename, a.Line, cl.Name, a.Name, t_1, t_0)
	}

	return err
}

// checkMethod typechecks a method definition.
func checkMethod(cs parser.Classes, cl *parser.Class, m *parser.Method) (err bool) {
	t_0 := m.Type
	t := symbols.Table{}
	for _, f := range m.Formals {
		t = t.Add(f.Name, f.Type, "")
	}
	var tp_0 string
	tp_0, err = checkExpression(cs, cl, m.Expr, t)
	if !lte(cs, cl.Name, tp_0, t_0) {
		err = true
		fmt.Fprintf(os.Stderr, "%s:%d: Inferred return type %s of method %s does not conform to declared return type %s.\n", cl.Filename, m.Line, tp_0, m.Name, t_0)
	}
	return err
}

// checkExpression typechecks a single expression within class cl,
// with symbol table "table". It returns the resulting type of the
// expression. If there is an error, it returns "Object", true.
func checkExpression(cs parser.Classes, cl *parser.Class, e *parser.Expr, table symbols.Table) (typ string, err bool) {
	switch e.Op {
	case parser.IntConst:
		typ = "Int"
	case parser.StringConst:
		typ = "String"
	case parser.BoolConst:
		typ = "Bool"
	case parser.New:
		typ = e.InternalType
	case parser.Let:
		typ, err = checkLet(cs, cl, e, table)
	case parser.Dispatch:
		typ, err = checkDispatch(cs, cl, e, table)
	case parser.StaticDispatch:
		typ, err = checkStaticDispatch(cs, cl, e, table)
	case parser.Object:
		typ, err = checkObject(cs, cl, e, table)
	case parser.Plus, parser.Sub, parser.Mul, parser.Divide:
		typ, err = checkArith(cs, cl, e, table)
	case parser.Lt, parser.Leq:
		typ, err = checkCompare(cs, cl, e, table)
	case parser.Comp:
		typ, err = checkComplement(cs, cl, e, table)
	case parser.Neg:
		typ, err = checkNeg(cs, cl, e, table)
	case parser.Block:
		typ, err = checkBlock(cs, cl, e, table)
	case parser.Eq:
		typ, err = checkEq(cs, cl, e, table)
	case parser.Assign:
		typ, err = checkAssign(cs, cl, e, table)
	case parser.Loop:
		typ, err = checkLoop(cs, cl, e, table)
	case parser.TypCase:
		typ, err = checkTypCase(cs, cl, e, table)
	case parser.Cond:
		typ, err = checkCond(cs, cl, e, table)
	case parser.Isvoid:
		typ, err = checkIsvoid(cs, cl, e, table)
	default:
		fmt.Fprintf(os.Stderr, "Typechecking not implemented for '%s' expression: %+v\n", e.Op, *e)
		os.Exit(1)

	}
	if !err && e.Type == "" {
		e.Type = typ
	}
	return typ, err
}

// checkLet typechecks a single let expression within class cl, with
// symbol table "table". It returns the resulting type of the
// expression. If there is an error, it returns "Object", true.
func checkLet(cs parser.Classes, cl *parser.Class, e *parser.Expr, table symbols.Table) (typ string, err bool) {
	if e.Text == "self" {
		fmt.Fprintf(os.Stderr, "%s:%d: 'self' cannot be bound in a 'let' expression.\n", cl.Filename, e.Line)
		return "Object", true
	}

	tp_0 := e.InternalType
	if e.Left.Op != parser.NoExpr {
		var t_1 string
		t_1, err = checkExpression(cs, cl, e.Left, table)
		if !err && !lte(cs, cl.Name, t_1, tp_0) {
			err = true
			fmt.Fprintf(os.Stderr, "%s:%d: Inferred type %s of initialization of %s does not conform to identifier's declared type %s.\n", cl.Filename, e.Line, t_1, e.Text, tp_0)
		}
	}
	t2, err2 := checkExpression(cs, cl, e.Right, table.Add(e.Text, tp_0, ""))
	if err2 {
		err = true
	}
	return t2, err
}

// checkBlock typechecks a block expression.
func checkBlock(cs parser.Classes, cl *parser.Class, e *parser.Expr, table symbols.Table) (typ string, err bool) {
	typ = "Object"
	for _, e2 := range e.Exprs {
		t, e := checkExpression(cs, cl, e2, table)
		err = err || e
		if !e {
			typ = t
		}
	}
	return typ, err
}

// checkEq typechecks an equality comparison expression.
func checkEq(cs parser.Classes, cl *parser.Class, e *parser.Expr, table symbols.Table) (typ string, err bool) {
	t_1, err := checkExpression(cs, cl, e.Left, table)
	if err {
		return "Bool", err
	}
	t_2, err := checkExpression(cs, cl, e.Right, table)
	if err {
		return "Bool", err
	}
	if (t_1 == "Int" || t_2 == "Int" || t_1 == "Bool" || t_2 == "Bool" || t_1 == "String" || t_2 == "String") && (t_1 != t_2) {
		fmt.Fprintf(os.Stderr, "%s:%d: Illegal comparison with a basic type.\n", cl.Filename, e.Line)
		return "Bool", true
	}
	return "Bool", false
}

// checkAssign typechecks an assign expression.
func checkAssign(cs parser.Classes, cl *parser.Class, e *parser.Expr, table symbols.Table) (typ string, err bool) {
	if e.Text == "self" {
		fmt.Fprintf(os.Stderr, "%s:%d: Cannot assign to 'self'.\n", cl.Filename, e.Line)
		return cl.Name, true
	}

	t, ok := findSymbol(cs, cl.Name, e.Text, table)
	if !ok {
		fmt.Fprintf(os.Stderr, "%s:%d: Undeclared identifier %s.\n", cl.Filename, e.Line, e.Text)
		return "Object", true
	}
	tp, err := checkExpression(cs, cl, e.Left, table)
	if err {
		return "Object", true
	}
	if !lte(cs, cl.Name, tp, t) {
		fmt.Fprintf(os.Stderr, "%s:%d: Type %s of assigned expression does not conform to declared type %s of identifier %s.\n", cl.Filename, e.Line, tp, t, e.Text)
		return "Object", true
	}
	return tp, false
}

// checkDispatch typechecks a single dispatch expression within class
// cl, with symbol table "table". It returns the resulting type of the
// expression. If there is an error, it returns "Object", true.
func checkDispatch(cs parser.Classes, cl *parser.Class, e *parser.Expr, table symbols.Table) (typ string, err bool) {
	t_0, err := checkExpression(cs, cl, e.Left, table)
	if err {
		return t_0, err
	}
	tp_0 := t_0
	if t_0 == "SELF_TYPE" {
		tp_0 = cl.Name
	}
	_, m := findMethod(cs, tp_0, e.Text)
	if m == nil {
		fmt.Fprintf(os.Stderr, "%s:%d: Dispatch to undefined method %s.\n", cl.Filename, e.Line, e.Text)
		return "Object", true
	}
	if len(m.Formals) != len(e.Exprs) {
		fmt.Fprintf(os.Stderr, "%s:%d: Got %d parameters; expected %d.\n", cl.Filename, e.Line, len(e.Exprs), len(m.Formals))
		return "Object", true
	}
	for i, f := range m.Formals {
		t_n, e2 := checkExpression(cs, cl, e.Exprs[i], table)
		if e2 {
			err = true
		} else {
			if !lte(cs, cl.Name, t_n, f.Type) {
				err = true
				fmt.Fprintf(os.Stderr, "%s:%d: In call of method %s, type %s of parameter %s does not conform to declared type %s.\n", cl.Filename, e.Line, m.Name, t_n, f.Name, f.Type)
			}
		}
	}
	if err {
		return "Object", true
	}

	if m.Type == "SELF_TYPE" {
		return t_0, false
	}
	return m.Type, false
}

// checkStaticDispatch typechecks a static dispatch expression.
func checkStaticDispatch(cs parser.Classes, cl *parser.Class, e *parser.Expr, table symbols.Table) (typ string, err bool) {
	t_0, err := checkExpression(cs, cl, e.Left, table)
	if err {
		return t_0, err
	}
	if !lte(cs, cl.Name, t_0, e.InternalType) {
		fmt.Fprintf(os.Stderr, "%s:%d: Expression type %s does not conform to declared static dispatch type %s.\n", cl.Filename, e.Line, t_0, e.InternalType)
		return "Object", true
	}
	_, m := findMethod(cs, e.InternalType, e.Text)
	if m == nil {
		fmt.Fprintf(os.Stderr, "%s:%d: Dispatch to undefined method %s.%s.\n", cl.Filename, e.Line, e.InternalType, e.Text)
		return "Object", true
	}
	if len(m.Formals) != len(e.Exprs) {
		fmt.Fprintf(os.Stderr, "%s:%d: Got %d parameters; expected %d.\n", cl.Filename, e.Line, len(e.Exprs), len(m.Formals))
		return "Object", true
	}
	for i, f := range m.Formals {
		t_n, e2 := checkExpression(cs, cl, e.Exprs[i], table)
		if e2 {
			err = true
		} else {
			if !lte(cs, cl.Name, t_n, f.Type) {
				err = true
				fmt.Fprintf(os.Stderr, "%s:%d: In call of method %s, type %s of parameter %s does not conform to declared type %s.\n", cl.Filename, f.Line, m.Name, t_n, f.Name, f.Type)
			}
		}
	}
	if err {
		return "Object", true
	}

	if m.Type == "SELF_TYPE" {
		return t_0, false
	}
	return m.Type, false
}

// checkObject typechecks a single object expression.
func checkObject(cs parser.Classes, cl *parser.Class, e *parser.Expr, table symbols.Table) (typ string, err bool) {
	if e.Text == "self" {
		return "SELF_TYPE", false
	}
	t, ok := findSymbol(cs, cl.Name, e.Text, table)
	if !ok {
		fmt.Fprintf(os.Stderr, "%s:%d: Undeclared identifier %s.\n", cl.Filename, e.Line, e.Text)
		return "Object", true
	}
	return t, false
}

// checkArith typechecks an arithmetic operator expression.
func checkArith(cs parser.Classes, cl *parser.Class, e *parser.Expr, table symbols.Table) (typ string, err bool) {
	t1, e1 := checkExpression(cs, cl, e.Left, table)
	t2, e2 := checkExpression(cs, cl, e.Right, table)
	if e1 || e2 {
		return "Int", true
	}
	if t1 != "Int" || t2 != "Int" {
		fmt.Fprintf(os.Stderr, "%s:%d: non-Int arguments: %s %s %s\n", cl.Filename, e.Line, t1, e.Text, t2)
		return "Int", true
	}
	return "Int", false
}

// checkCompare typechecks a comparison operator expression.
func checkCompare(cs parser.Classes, cl *parser.Class, e *parser.Expr, table symbols.Table) (typ string, err bool) {
	t1, e1 := checkExpression(cs, cl, e.Left, table)
	t2, e2 := checkExpression(cs, cl, e.Right, table)
	if e1 || e2 {
		return "Bool", true
	}
	if t1 != "Int" || t2 != "Int" {
		fmt.Fprintf(os.Stderr, "%s:%d: non-Int arguments: %s %s %s\n", cl.Filename, e.Line, t1, e.Text, t2)
		return "Bool", true
	}
	return "Bool", false
}

// checkComplement typechecks a complement (not) operator expression.
func checkComplement(cs parser.Classes, cl *parser.Class, e *parser.Expr, table symbols.Table) (typ string, err bool) {
	t1, err := checkExpression(cs, cl, e.Left, table)
	if err {
		return "Bool", true
	}
	if t1 != "Bool" {
		fmt.Fprintf(os.Stderr, "%s:%d: non-Bool argument to complement.\n", cl.Filename, e.Line)
		return "Bool", true
	}
	return "Bool", false
}

// checkNeg typechecks a neg (bit flip) operator expression.
func checkNeg(cs parser.Classes, cl *parser.Class, e *parser.Expr, table symbols.Table) (typ string, err bool) {
	t1, err := checkExpression(cs, cl, e.Left, table)
	if err {
		return "Int", true
	}
	if t1 != "Int" {
		fmt.Fprintf(os.Stderr, "%s:%d: non-Int argument to neg.\n", cl.Filename, e.Line)
		return "Int", true
	}
	return "Int", false
}

// checkLoop typechecks a loop expression.
func checkLoop(cs parser.Classes, cl *parser.Class, e *parser.Expr, table symbols.Table) (typ string, err bool) {
	t1, err := checkExpression(cs, cl, e.Left, table)
	if err {
		return "Object", true
	}
	if t1 != "Bool" {
		fmt.Fprintf(os.Stderr, "%s:%d: Loop condition does not have type Bool.\n", cl.Filename, e.Line)
		return "Object", true
	}
	if _, err := checkExpression(cs, cl, e.Right, table); err {
		return "Object", true
	}
	return "Object", false
}

// checkTypCase typechecks a typcase expression.
func checkTypCase(cs parser.Classes, cl *parser.Class, e *parser.Expr, table symbols.Table) (typ string, err bool) {
	_, err = checkExpression(cs, cl, e.Left, table)
	typesSeen := make(map[string]bool)
	lub := ""
	for _, b := range e.Exprs {
		if b.Text == "self" {
			fmt.Fprintf(os.Stderr, "%s:%d: Cannot use 'self' as variable in case statement.\n", cl.Filename, b.Line)
			return "Object", true
		}
		if typesSeen[b.Type] {
			fmt.Fprintf(os.Stderr, "%s:%d: Duplicate branch %s in case statement.\n", cl.Filename, b.Line, b.Type)
			err = true
		}
		typesSeen[b.Type] = true

		tp_n, e2 := checkExpression(cs, cl, b.Left, table.Add(b.Text, b.Type, ""))
		err = err || e2
		if lub == "" {
			lub = tp_n
		} else {
			lub = Lub(cs, cl.Name, lub, tp_n)
		}
	}
	return lub, err
}

// checkCond typechecks a cond expression.
func checkCond(cs parser.Classes, cl *parser.Class, e *parser.Expr, table symbols.Table) (typ string, err bool) {
	t1, err := checkExpression(cs, cl, e.Left, table)
	if err {
		return "Object", true
	}
	if t1 != "Bool" {
		fmt.Fprintf(os.Stderr, "%s:%d: Cond condition does not have type Bool.\n", cl.Filename, e.Line)
		return "Object", true
	}
	t2, err := checkExpression(cs, cl, e.Right, table)
	if err {
		return "Object", true
	}
	t3, err := checkExpression(cs, cl, e.Else, table)
	if err {
		return "Object", true
	}
	return Lub(cs, cl.Name, t2, t3), false
}

// checkIsvoid typechecks an isvoid expression.
func checkIsvoid(cs parser.Classes, cl *parser.Class, e *parser.Expr, table symbols.Table) (typ string, err bool) {
	_, err = checkExpression(cs, cl, e.Left, table)
	return "Bool", err
}

// generateSymbolTables generates symbol tables for class attributes and methods.
func generateSymbolTables(cs parser.Classes, cl *parser.Class) {
	var attrTable symbols.Table
	var methodTable symbols.Table

	if cl.Name != "Object" {
		parent := cs[cl.Parent]
		attrTable = parent.AttrTable
		methodTable = parent.MethodTable
	}
	methodTable, err := methodTable.Replace("_init", "SELF_TYPE", cl.Name)
	if err != nil {
		panic(err)
	}

	// Add all the attributes to the attribute symbol table for this class.
	// Add any new methods to the method symbol table.
	for _, f := range cl.Features {
		if f.Attr != nil {
			attrTable = attrTable.Add(f.Attr.Name, f.Attr.Type, cl.Name)
		} else {
			methodTable, err = methodTable.Replace(f.Method.Name, f.Method.Type, cl.Name)
			if err != nil {
				panic(err)
			}
		}
	}
	cl.AttrTable = attrTable
	cl.MethodTable = methodTable

	// Generate symbol tables for all children, with this class's table as a starting point.
	for _, child := range cl.Children {
		generateSymbolTables(cs, cs[child])
	}
}

func Check(program *parser.Program) (parser.Classes, error) {
	program.SplitFeatures()

	err := false
	cs := make(parser.Classes)
	allCs := make(parser.Classes) // For parent lookups.

	builtins := Builtins()

	for _, cl := range builtins {
		cs[cl.Name] = cl
		allCs[cl.Name] = cl
		if cl.Name != "Object" {
			parent, ok := cs[cl.Parent]
			if !ok {
				fmt.Fprintf(os.Stderr, "%s:%d: Internal error: parent %s of %s not found.\n", cl.Filename, cl.Line, cl.Parent, cl.Name)
				return nil, theErr
			}
			parent.Children = append(parent.Children, cl.Name)
		}
	}

	for _, cl := range program.Classes {
		allCs[cl.Name] = cl
	}

	for _, cl := range program.Classes {
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
			cl.Parent = "Object"
		}
		if !errHere {
			cs[cl.Name] = cl
			parent, ok := allCs[cl.Parent]
			if !ok {
				err = true
				fmt.Fprintf(os.Stderr, "%s:%d: Class %s inherits from an undefined class %s.\n", cl.Filename, cl.Line, cl.Name, cl.Parent)
			} else {
				parent.Children = append(parent.Children, cl.Name)
			}
		}
	}

	if m, ok := cs["Main"]; !ok {
		fmt.Fprintf(os.Stderr, "Class Main is not defined.\n")
		err = true
	} else {
		if mm, ok := m.Methods["main"]; !ok {
			fmt.Fprintf(os.Stderr, "Method Main.main is not defined.\n")
			err = true
		} else {
			if len(mm.Formals) != 0 {
				fmt.Fprintf(os.Stderr, "Method Main.main shouldn't take arguments.\n")
				err = true
			}
		}
	}

	err = err || checkInterfaces(cs)

	generateSymbolTables(cs, cs["Object"])

	for _, cl := range program.Classes {
		for _, f := range cl.Features {
			if f.Attr != nil {
				err = err || checkAttribute(cs, cl, f.Attr)
			} else {
				err = err || checkMethod(cs, cl, f.Method)
			}
		}
	}

	if err {
		return nil, theErr
	}
	return cs, nil
}
