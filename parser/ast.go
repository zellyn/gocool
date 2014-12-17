package parser

import (
	"bytes"
	"fmt"
	"log"
	"strings"

	"github.com/zellyn/gocool/symbols"
)

type Base struct {
	Line int
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
	Methods  map[string]*Method
	Attrs    map[string]*Attr

	// For typechecking
	Depth       int
	AttrTable   symbols.Table
	MethodTable symbols.Table
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
	table   symbols.Table
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
	Text         string
	Type         string // Final Type of Expr
	InternalType string // Type for static dispatch or let
	Op           ExprOp
	Left         *Expr
	Right        *Expr
	Else         *Expr
	Exprs        []*Expr
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
	Cond                  // if statement
	Loop                  // while loop
	Dispatch              // expr.name(params) or name(params)
	StaticDispatch        // expr@type.name(params)
	Let                   // Let expression
	Assign                // x <- y
	TypCase               // Type case
	Branch                // Individual branch in a type case
	NoExpr                // No expression (eg. optional assign is missing)
)

var exprOpString = map[ExprOp]string{
	Placeholder:    "[PLACEHOLDER]",
	IntConst:       "int",
	StringConst:    "string",
	BoolConst:      "bool",
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
	Cond:           "cond",
	Loop:           "loop",
	Dispatch:       "dispatch",
	StaticDispatch: "static_dispatch",
	Let:            "let",
	Assign:         "assign",
	TypCase:        "typcase",
	Branch:         "branch",
	NoExpr:         "no_expr",
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
		return &Expr{
			Op:           Let,
			Text:         bindings[0].Text,
			InternalType: bindings[0].Type,
			Left:         bindings[0].Left,
			Right:        body,
			Base:         Base{Line: body.Line},
		}
	}
	Right := MakeLet(bindings[1:], body)
	return &Expr{
		Op:           Let,
		Text:         bindings[0].Text,
		InternalType: bindings[0].Type,
		Left:         bindings[0].Left,
		Right:        Right,
		Base:         Base{Right.Line},
	}
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
	d.printf("#%d\n", p.Line)
	d.println("_program")
	d.in()
	for _, c := range p.Classes {
		c.dump(d)
	}
	return d.b.String()
}

func (c *Class) dump(d *dumper) {
	d.printf("#%d\n", c.Line)
	d.println("_class")
	d.in()
	defer d.out()
	d.println(c.Name)
	d.println(c.Parent)
	d.printf("%q\n", c.Filename)
	d.println("(")

	for _, f := range c.Features {
		f.dump(d)
	}
	d.println(")")
}

func (f *Feature) dump(d *dumper) {
	if f.Method != nil {
		f.Method.dump(d)
	}
	if f.Attr != nil {
		f.Attr.dump(d)
	}
}

func (m *Method) dump(d *dumper) {
	d.printf("#%d\n", m.Line)
	d.println("_method")
	d.in()
	defer d.out()
	d.println(m.Name)
	for _, f := range m.Formals {
		f.dump(d)
	}
	d.println(m.Type)
	m.Expr.dump(d)
}

func (a *Attr) dump(d *dumper) {
	d.printf("#%d\n", a.Line)
	d.println("_attr")
	d.in()
	defer d.out()
	d.println(a.Name)
	d.println(a.Type)
	a.Init.dump(d)
}

func (e *Expr) dump(d *dumper) {
	d.printf("#%d\n", e.Line)
	d.printf("_%s\n", e.Op)
	switch e.Op {
	case Assign:
		d.in()
		d.println(e.Text)
		e.Left.dump(d)
		d.out()
	case IntConst:
		d.in()
		d.println(e.Text)
		d.out()
	case BoolConst:
		d.in()
		if strings.ToLower(e.Text) == "false" {
			d.println("0")
		} else {
			d.println("1")
		}
		d.out()
	case StringConst:
		d.in()
		d.printf("\"%s\"\n", printableString(e.Text))
		d.out()
	case Dispatch:
		d.in()
		e.Left.dump(d)
		d.println(e.Text)
		d.println("(")
		for _, e2 := range e.Exprs {
			e2.dump(d)
		}
		d.println(")")
		d.out()
	case StaticDispatch:
		d.in()
		e.Left.dump(d)
		d.println(e.InternalType)
		d.println(e.Text)
		d.println("(")
		for _, e2 := range e.Exprs {
			e2.dump(d)
		}
		d.println(")")
		d.out()
	case Object:
		d.in()
		d.println(e.Text)
		d.out()
	case Block:
		d.in()
		for _, e2 := range e.Exprs {
			e2.dump(d)
		}
		d.out()
	case Plus, Sub, Mul, Divide, Leq, Eq, Lt, Loop:
		d.in()
		e.Left.dump(d)
		e.Right.dump(d)
		d.out()
	case Neg, Comp, Isvoid:
		d.in()
		e.Left.dump(d)
		d.out()
	case New:
		d.in()
		d.println(e.InternalType)
		d.out()
	case Let:
		d.in()
		d.println(e.Text)
		d.println(e.InternalType)
		e.Left.dump(d)
		e.Right.dump(d)
		d.out()
	case Cond:
		d.in()
		e.Left.dump(d)
		e.Right.dump(d)
		e.Else.dump(d)
		d.out()
	case TypCase:
		d.in()
		e.Left.dump(d)
		for _, e2 := range e.Exprs {
			e2.dump(d)
		}
		d.out()
	case Branch:
		d.in()
		d.println(e.Text)
		d.println(e.Type)
		e.Left.dump(d)
		d.out()
	}
	if e.Type == "" {
		d.println(": _no_type")
	} else if e.Op != Branch {
		d.printf(": %s\n", e.Type)
	}
}

func (f *Formal) dump(d *dumper) {
	d.printf("#%d\n", f.Line)
	d.println("_formal")
	d.in()
	defer d.out()
	d.println(f.Name)
	d.println(f.Type)
}

// SplitFeatures splits features into Methods and Attrs on Class objects.
func (p *Program) SplitFeatures() {
	for _, c := range p.Classes {
		for _, f := range c.Features {
			if f.Attr != nil {
				if c.Attrs == nil {
					c.Attrs = make(map[string]*Attr)
				}
				c.Attrs[f.Attr.Name] = f.Attr
			} else {
				if c.Methods == nil {
					c.Methods = make(map[string]*Method)
				}
				c.Methods[f.Method.Name] = f.Method
			}
		}
	}
}
