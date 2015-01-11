package parser

import (
	"bytes"
	"fmt"
	"strings"
)

// File dumper.go contains routines for dumping the ast in a format
// that matches that used by the Java and C++ COOL scaffolding code.

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
