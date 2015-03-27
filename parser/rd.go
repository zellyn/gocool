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

type precedence int

const (
	PREC_NONE precedence = iota
	PREC_IN
	PREC_ASSIGN
	PREC_NOT
	PREC_CMP
	PREC_ADD
	PREC_MUL
	PREC_ISVOID
	PREC_NEG
	PREC_AT
	PREC_DISPATCH
	// TODO(zellyn): remove unused values.
)

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

func (rd *rdParser) peek() item {
	i := rd.next()
	rd.backup()
	return i
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
	var err error

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
	if i.typ != ':' {
		return nil, fmt.Errorf("Method definitions expecting colon; got %s(%s)", i.val, typName(i.typ))
	}
	i = rd.next()
	if i.typ != TYPEID {
		return nil, fmt.Errorf("Method definition expecting type after colon; got %s(%s)", i.val, typName(i.typ))
	}
	m.Type = i.val

	i = rd.next()
	if i.typ != '{' {
		return nil, fmt.Errorf("Method definition expecting opening brace; got %s(%s)", i.val, typName(i.typ))
	}

	m.Expr, err = rd.expr()
	if err != nil {
		return nil, err
	}

	i = rd.next()
	if i.typ != '}' {
		return nil, fmt.Errorf("Method definition expecting closing brace; got %s(%s)", i.val, typName(i.typ))
	}

	i = rd.next()
	if i.typ != ';' {
		return nil, fmt.Errorf("Method definitions end with semicolon; got %s(%s)", i.val, typName(i.typ))
	}
	m.Line = rd.line()
	return m, nil
}

// maybeAssign parsess a possible assign statement: it returns either
// a normal expression, or a NoExpr.
func (rd *rdParser) maybeAssign() (*Expr, error) {
	i := rd.next()
	if i.typ != ASSIGN {
		rd.backup()
		return &Expr{Op: NoExpr, Base: Base{Line: rd.line()}}, nil
	}
	return rd.expr()
}

// expr parses a single expression.
func (rd *rdParser) expr() (*Expr, error) {
	return rd.exprPrec(PREC_NONE)
}

// exprPrec parses an expression at the given precedence or lower.
func (rd *rdParser) exprPrec(prec precedence) (*Expr, error) {
	i := rd.next()
	pp, ok := prefixParslets[i.typ]
	if !ok {
		return nil, fmt.Errorf("Trying to parse expression; got %s(%s)", i.val, typName(i.typ))
	}

	left, err := pp(rd)
	if err != nil {
		return nil, err
	}

	for prec < rd.getPrecedence() {
		i = rd.next()
		ip := infixParslets[i.typ].parslet
		left, err = ip(rd, left)
		if err != nil {
			return nil, err
		}
	}

	return left, nil
}

// getPrecedence returns the precedence of the next operator, if
// known, or PREC_NONE.
func (rd *rdParser) getPrecedence() precedence {
	i := rd.peek()
	return infixParslets[i.typ].prec
}

// argExprs parses argument expressions, up to and including the
// closing ')'. It assumes the opening paren has already been
// consumed.
func (rd *rdParser) argExprs() ([]*Expr, error) {
	es := []*Expr{}

	for {
		if rd.peek().typ == ')' {
			break
		}
		e, err := rd.expr()
		if err != nil {
			return nil, err
		}
		es = append(es, e)
	}
	rd.next() // consume the closing paren
	return es, nil
}

// --------------- prefix parslets ---------------------------------------

type prefixParslet func(*rdParser) (*Expr, error)

var prefixParslets map[int]prefixParslet

// exprPrefixObjectId parses an expression beginning with an objectId.
func exprPrefixObjectId(rd *rdParser) (*Expr, error) {
	var err error
	i := rd.i
	e := &Expr{Text: i.val, Base: Base{Line: rd.line()}}

	i = rd.next()

	switch i.typ {
	case ASSIGN:
		e.Op = Assign
		e.Left, err = rd.expr()
		if err != nil {
			return nil, err
		}
		e.Line = e.Left.Line
	case '(':
		e.Op = Dispatch
		es, err := rd.argExprs()
		if err != nil {
			return nil, err
		}
		e.Exprs = es
		e.Left = &Expr{Op: Object, Text: "self", Base: Base{Line: e.Line}}
		e.Line = rd.line()
	default:
		rd.backup()
		e.Op = Object
	}

	return e, nil
}

// exprPrefixNumStringBool parses a number, string or bool.
func exprPrefixNumStringBool(rd *rdParser) (*Expr, error) {
	i := rd.i
	switch i.typ {
	case NUM:
		return &Expr{Op: IntConst, Text: i.val, Base: Base{Line: rd.line()}}, nil
	case STRING:
		return &Expr{Op: StringConst, Text: unescapeString(i.val), Base: Base{Line: rd.line()}}, nil
	case BOOL:
		return &Expr{Op: BoolConst, Text: i.val, Base: Base{Line: rd.line()}}, nil
	}
	panic(fmt.Sprintf("exprNumStringBool: expected num/string/bool; ; got %s(%s)", i.val, typName(i.typ)))
}

// exprPrefixNeg parses a negation expression (~)
func exprPrefixNeg(rd *rdParser) (*Expr, error) {
	e, err := rd.expr()
	if err != nil {
		return nil, err
	}
	return &Expr{Op: Neg, Left: e, Text: "~", Base: Base{Line: e.Line}}, nil
}

// exprPrefixParenthesized parses a parenthesized expression.
func exprPrefixParenthesized(rd *rdParser) (*Expr, error) {
	e, err := rd.expr()
	if err != nil {
		return nil, err
	}
	i := rd.next()
	if i.typ != ')' {
		return nil, fmt.Errorf("Parenthesized expression should end with ')'; got %s(%s)", i.val, typName(i.typ))
	}

	e.Line = rd.line()
	return e, nil
}

// exprPrefixExprList handles braced lists of expressions. The '{' has
// already been consumed.
func exprPrefixExprList(rd *rdParser) (*Expr, error) {
	var es []*Expr

	for {
		i := rd.peek()
		if i.typ == '}' {
			return &Expr{Op: Block, Exprs: es, Base: Base{Line: rd.line()}}, nil
		}

		e, err := rd.expr()
		if err != nil {
			return nil, err
		}

		es = append(es, e)
	}
}

// --------------- infix parslets ----------------------------------------

type infixParslet func(*rdParser, *Expr) (*Expr, error)

type infixInfo struct {
	parslet infixParslet
	prec    precedence
}

var infixParslets map[int]infixInfo

// exprInfixDispatch handles normal dispatch with explicit object expression.
func exprInfixDispatch(rd *rdParser, left *Expr) (*Expr, error) {
	e := &Expr{Op: Dispatch, Left: left}
	i := rd.next()
	if i.typ != OBJECTID {
		return nil, fmt.Errorf("Dispatch expects method name after dot; got %s(%s)", i.val, typName(i.typ))
	}
	e.Text = i.val
	i = rd.next()
	if i.typ != '(' {
		return nil, fmt.Errorf("Dispatch expecting opening paren; got %s(%s)", i.val, typName(i.typ))
	}
	es, err := rd.argExprs()
	if err != nil {
		return nil, err
	}
	e.Exprs = es
	e.Line = rd.line()
	return e, nil
}

// --------------- set up parslet maps -----------------------------------
func init() {
	prefixParslets = map[int]prefixParslet{
		OBJECTID: exprPrefixObjectId,
		NUM:      exprPrefixNumStringBool,
		STRING:   exprPrefixNumStringBool,
		BOOL:     exprPrefixNumStringBool,
		'~':      exprPrefixNeg,
		'(':      exprPrefixParenthesized,
		'{':      exprPrefixExprList,
	}

	infixParslets = map[int]infixInfo{
		'.': {
			exprInfixDispatch,
			PREC_DISPATCH,
		},
	}
}
