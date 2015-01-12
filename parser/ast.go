package parser

// File ast.go contains the basic AST structs for COOL. Expressions
// are all just the Expr type, with an enum for telling them apart. I
// suppose expressions could also have been an interface, with
// different implementations per expression type. This way we have
// lots of switch statements, instead of vtables or some moral
// equivalent. I'm still not sure which would be better.

import (
	"fmt"
	"log"

	"github.com/zellyn/gocool/symbols"
)

type Base struct {
	Line int
}

type Program struct {
	Base
	Classes []*Class
}

type Classes map[string]*Class

type Class struct {
	Base
	Name     string
	Parent   string
	Features []*Feature
	Filename string
	Methods  map[string]*Method
	Attrs    map[string]*Attr

	// For typechecking and codegen
	AttrTable   symbols.Table
	MethodTable symbols.Table
	Children    []string
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
	Text         string
	Type         string // Final Type of Expr
	InternalType string // Declared typename for static dispatch, new or let.
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

// SplitFeatures splits Features into Methods and Attrs on Class objects.
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
