package parser

import (
	"errors"
	"fmt"
)

var typNames = map[int]string{
	ASSIGN:   "ASSIGN",
	BOOL:     "BOOL",
	CASE:     "CASE",
	CLASS:    "CLASS",
	CMP:      "CMP",
	DARROW:   "DARROW",
	ELSE:     "ELSE",
	ERR:      "ERR",
	ESAC:     "ESAC",
	FI:       "FI",
	IF:       "IF",
	IN:       "IN",
	INHERITS: "INHERITS",
	ISVOID:   "ISVOID",
	LE:       "LE",
	LET:      "LET",
	LOOP:     "LOOP",
	NEW:      "NEW",
	NOT:      "NOT",
	NUM:      "NUM",
	OBJECTID: "OBJECTID",
	OF:       "OF",
	POOL:     "POOL",
	STRING:   "STRING",
	THEN:     "THEN",
	TYPEID:   "TYPEID",
	WHILE:    "WHILE",
	eof:      "eof",
}

func typName(i int) string {
	if name, ok := typNames[i]; ok {
		return name
	}
	if i < 0xE000 {
		return fmt.Sprintf("%q", rune(i))
	}
	return fmt.Sprintf("unknown_%d", i)
}

type rdParser struct {
	l    *lexer
	i    item
	hold bool
}

func (rd *rdParser) next() item {
	if !rd.hold && rd.i.typ != eof {
		rd.i = rd.l.nextItem()
	}
	rd.hold = false
	return rd.i
}

// un-call next()
func (rd *rdParser) backup() {
	if rd.hold {
		panic("Cannot call backup() twice without intevening next()")
	}
	rd.hold = true
}

func (rd rdParser) line() int {
	return rd.l.lineNumber()
}

func (rd rdParser) filename() string {
	return rd.l.name
}

func RdParse(filename, text string) (*Program, error) {
	rd := &rdParser{
		l: newLex(filename, text),
	}
	return rd.program()
}

// program parses and returns an entire COOL program.
func (rd *rdParser) program() (*Program, error) {
	p := &Program{}
LOOP:
	for {
		i := rd.next()
		switch i.typ {
		case eof:
			break LOOP
		case CLASS:
			if cl, err := rd.class(); err == nil {
				p.Classes = append(p.Classes, cl)
			} else {
				return nil, err
			}
		default:
			return nil, fmt.Errorf("Unexpected token: want CLASS; got %s", typName(i.typ))
		}
	}
	if len(p.Classes) == 0 {
		return nil, errors.New("No classes found.")
	}
	p.Line = p.Classes[0].Line
	return p, nil
}

// class parses and returns a single COOL class definition. It expects
// that the CLASS token has already been consumed.
func (rd *rdParser) class() (*Class, error) {
	cl := &Class{Filename: rd.filename()}
	cl.Parent = "Object"

	i := rd.next()
	if i.typ != TYPEID {
		return nil, fmt.Errorf("Classes should start with a classname; got %s(%s)", i.val, typName(i.typ))
	}
	cl.Name = i.val

	i = rd.next()

	if i.typ == INHERITS {
		i = rd.next()
		if i.typ != TYPEID {
			return nil, fmt.Errorf("inherits should be followed with a classname; got %s(%s)", i.val, typName(i.typ))
		}
		cl.Parent = i.val
		i = rd.next()
	}

	if i.typ != '{' {
		return nil, fmt.Errorf("Class bodies start with an opening brace; got %s(%s)", i.val, typName(i.typ))

	}

	for {
		i = rd.next()
		if i.typ == '}' {
			break
		}
		rd.backup()
		f, err := rd.feature()
		if err != nil {
			return nil, err
		}
		cl.Features = append(cl.Features, f)
	}

	i = rd.next()
	if i.typ != ';' {
		return nil, fmt.Errorf("Class definitions should end with a semicolon; got %s(%s)", i.val, typName(i.typ))
	}
	cl.Line = rd.line()
	return cl, nil
}

// feature parses a feature.
func (rd *rdParser) feature() (*Feature, error) {
	f := &Feature{}
	var err error

	i := rd.next()
	if i.typ != OBJECTID {
		return nil, fmt.Errorf("Feature definitions should start with an OBJECTID; got %s(%s)", i.val, typName(i.typ))
	}

	objectId := i.val
	i = rd.next()

	switch i.typ {
	case ':': // Attribute
		if f.Attr, err = rd.attr(objectId); err != nil {
			return nil, err
		}
	case '(': // Method
		if f.Method, err = rd.method(objectId); err != nil {
			return nil, err
		}
	default:
		return nil, fmt.Errorf("Feature names should be followed by '(' or ':'; got %s(%s)", i.val, typName(i.typ))
	}

	return f, nil
}

// attr parses an attribute definition, picking up after the colon.
func (rd *rdParser) attr(name string) (*Attr, error) {
	a := &Attr{Name: name}
	i := rd.next()
	if i.typ != TYPEID {
		return nil, fmt.Errorf("Attribute definitions expect type after colon; got %s(%s)", i.val, typName(i.typ))
	}
	a.Type = i.val
	var err error
	if a.Init, err = rd.maybeAssign(); err != nil {
		return nil, err
	}
	i = rd.next()
	if i.typ != ';' {
		return nil, fmt.Errorf("Attribute definitions end with semicolon; got %s(%s)", i.val, typName(i.typ))
	}
	a.Line = rd.line()
	return a, nil
}

// method parses a method definition, picking up after the opening paren.
func (rd *rdParser) method(name string) (*Method, error) {
	m := &Method{Name: name}

	// Parse formals
	for {
		i := rd.next()
		if i.typ == ')' {
			break
		}
		if i.typ != OBJECTID {
			return nil, fmt.Errorf("Parsing formals of %s, expected OBJECTID; got %s(%s)", m.Name, i.val, typName(i.typ))
		}
	}

	i := rd.next()
	if i.typ != ';' {
		return nil, fmt.Errorf("Method definitions end with semicolon; got %s(%s)", i.val, typName(i.typ))
	}
	m.Line = rd.line()
	return m, nil
}

// Parse a possible assign statement
func (rd *rdParser) maybeAssign() (*Expr, error) {
	i := rd.next()
	if i.typ != ASSIGN {
		rd.backup()
		return &Expr{Op: NoExpr, Base: Base{Line: rd.line()}}, nil
	}
	return rd.expr()
}

func (rd *rdParser) expr() (*Expr, error) {
	return &Expr{}, nil
}
