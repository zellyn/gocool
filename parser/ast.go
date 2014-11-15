package parser

import (
	"bytes"
	"fmt"
	"log"
)

type Base struct {
	line int
}

type Program struct {
	Base
	Classes []*Class
}

type Class struct {
	Base
	Name     string
	Parent   string
	Features []*Feature
	Filename string
}

type Feature struct {
	Base
	Method *Method
	Attr   *Attr
}

type Method struct {
	Base
	Name    string
	Formals []*Formal
	Type    string
	Expr    *Expr
}

type Attr struct {
	Base
	Name string
	Type string
	Init *Expr
}

type Formal struct {
	Base
	Name string
	Type string
}

type Expr struct {
	Base
	Text  string
	Type  string // Type for static dispatch
	Op    ExprOp
	Left  *Expr
	Right *Expr
	Else  *Expr
	Exprs []*Expr
}

type ExprOp int

const (
	_              ExprOp = iota
	Placeholder           // Used for temporary expression parts
	IntConst              // Integer constant
	StringConst           // String constant
	BoolConst             // Boolean constant
	Plus                  // Left + Right
	Sub                   // Left - Right
	Mul                   // Left * Right
	Divide                // Left / Right
	Comp                  // Complement (not)
	Object                // Object identifier
	Neg                   // ~ Left
	Leq                   // Left <= Right
	Eq                    // Left = Right
	Lt                    // Left < Right
	New                   // new objectid
	Isvoid                // isvoid Left
	Block                 // { Expressions }
	If                    // if statement
	While                 // while loop
	Dispatch              // expr.name(params) or name(params)
	StaticDispatch        // expr@type.name(params)
	Let                   // Let expression
	Assign                // x <- y
	TypCase               // Type case
	Branch                // Individual branch in a type case
)

var exprOpString = map[ExprOp]string{
	IntConst:       "int_const",
	StringConst:    "string_const",
	BoolConst:      "bool_const",
	Plus:           "plus",
	Sub:            "sub",
	Mul:            "mul",
	Divide:         "divide",
	Comp:           "comp",
	Object:         "object",
	Neg:            "neg",
	Leq:            "leq",
	Eq:             "eq",
	Lt:             "lt",
	New:            "new",
	Isvoid:         "isvoid",
	Block:          "block",
	If:             "if",
	While:          "while",
	Dispatch:       "dispatch",
	StaticDispatch: "static_dispatch",
	Let:            "let",
	Assign:         "assign",
	TypCase:        "typcase",
	Branch:         "branch",
}

func OpForCmp(cmp string) ExprOp {
	switch cmp {
	case le:
		return Leq
	case "=":
		return Eq
	case "<":
		return Lt
	}
	log.Fatalf("Unknown comparison operator: %q", cmp)
	return 0
}

func (op ExprOp) String() string {
	if 0 < int(op) && int(op) <= len(exprOpString) {
		return exprOpString[op]
	}
	return fmt.Sprintf("ExprOp(%d)", op)
}

func MakeLet(bindings []*Expr, body *Expr) *Expr {
	if len(bindings) == 1 {
		return &Expr{Op: Let, Type: bindings[0].Type, Text: bindings[0].Text, Left: body}
	}
	return &Expr{Op: Let, Type: bindings[0].Type, Text: bindings[0].Text, Left: MakeLet(bindings[1:], body)}
}

type dumper struct {
	indent int
	b      *bytes.Buffer
}

func newDumper() *dumper {
	return &dumper{
		b: new(bytes.Buffer),
	}
}

func (d *dumper) in() {
	d.indent += 2
}

func (d *dumper) out() {
	d.indent -= 2
}

func (d *dumper) printf(format string, a ...interface{}) int {
	for i := 0; i < d.indent; i++ {
		d.b.WriteByte(' ')
	}
	n, _ := fmt.Fprintf(d.b, format, a...)
	return n + d.indent
}

func (d *dumper) println(s string) int {
	return d.printf("%s\n", s)
}

func (p *Program) Dump() string {
	d := newDumper()
	d.printf("#%d\n", p.line)
	d.println("_program")
	d.in()
	for _, c := range p.Classes {
		c.dump(d)
	}
	return d.b.String()
}

func (c *Class) dump(d *dumper) {
	d.printf("#%d\n", c.line)
	d.println("_class")
	d.in()
	defer d.out()
	d.println(c.Name)
	d.println(c.Parent)
	d.printf("%q\n", c.Filename)
}
