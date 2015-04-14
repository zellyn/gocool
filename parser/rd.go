package parser

import (
	"bytes"
	"errors"
	"fmt"
	"log"
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

func typDebug(i item) string {
	name := typName(i.typ)
	if "'"+i.val+"'" == name {
		return name
	}
	return fmt.Sprintf("%s(%s)", i.val, typName(i.typ))
}

type rdParser struct {
	l          *lexer
	i          item
	hold       bool
	logbuf     *bytes.Buffer
	log        *log.Logger
	depth      int
	parseError bool
}

func (rd *rdParser) indent() {
	rd.depth++
}

func (rd *rdParser) dedent() {
	rd.depth--
}

func (rd *rdParser) logf(format string, v ...interface{}) {
	prefix := fmt.Sprintf("%*s", rd.depth, "")
	rd.log.Printf(prefix+format, v...)
}

func (rd *rdParser) error(e string) {
	rd.parseError = true
	fmt.Printf("%q, line %d: %s at or near %s\n", rd.l.name, rd.l.lineNumber(), e, printItem(rd.l.lastItem, true))
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

func RdParse(filename, text string) (prog *Program, logs string, err error) {

	rd := &rdParser{
		l:      newLex(filename, text),
		logbuf: &bytes.Buffer{},
	}
	rd.log = log.New(rd.logbuf, "logger: ", log.Lshortfile)
	prog, err = rd.program()
	if err != nil || rd.parseError {
		// fmt.Println(err) // xyzzy
		return nil, rd.logbuf.String(), errors.New("Compilation halted due to lex and parse errors")
	}
	return prog, rd.logbuf.String(), nil
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
				p.Line = cl.Line
			} else {
				return nil, err
			}
		default:
			rd.error("syntax error")
			return nil, fmt.Errorf("Unexpected token: want CLASS; got %s", typName(i.typ))
		}
	}
	if len(p.Classes) == 0 {
		rd.error("syntax error")
		return nil, errors.New("No classes found.")
	}
	return p, nil
}

// class parses and returns a single COOL class definition. It expects
// that the CLASS token has already been consumed.
func (rd *rdParser) class() (*Class, error) {
	cl := &Class{Filename: rd.filename()}
	cl.Parent = "Object"

	i := rd.next()
	if i.typ != TYPEID {
		rd.error("syntax error")
		return nil, fmt.Errorf("Classes should start with a classname; got %s", typDebug(i))
	}
	cl.Name = i.val

	i = rd.next()

	if i.typ == INHERITS {
		i = rd.next()
		if i.typ != TYPEID {
			rd.error("syntax error")
			return nil, fmt.Errorf("inherits should be followed with a classname; got %s", typDebug(i))
		}
		cl.Parent = i.val
		i = rd.next()
	}

	if i.typ != '{' {
		rd.error("syntax error")
		return nil, fmt.Errorf("Class bodies start with an opening brace; got %s", typDebug(i))

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
		rd.error("syntax error")
		return nil, fmt.Errorf("Class definitions should end with a semicolon; got %s", typDebug(i))
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
		rd.error("syntax error")
		return nil, fmt.Errorf("Feature definitions should start with an OBJECTID; got %s", typDebug(i))
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
		rd.error("syntax error")
		return nil, fmt.Errorf("Feature names should be followed by '(' or ':'; got %s", typDebug(i))
	}

	return f, nil
}

// attr parses an attribute definition, picking up after the colon.
func (rd *rdParser) attr(name string) (*Attr, error) {
	a := &Attr{Name: name}
	i := rd.next()
	if i.typ != TYPEID {
		rd.error("syntax error")
		return nil, fmt.Errorf("Attribute definitions expect type after colon; got %s", typDebug(i))
	}
	a.Type = i.val
	var err error
	if a.Init, err = rd.maybeAssign(); err != nil {
		return nil, err
	}
	i = rd.next()
	if i.typ != ';' {
		rd.error("syntax error")
		return nil, fmt.Errorf("Attribute definitions end with semicolon; got %s", typDebug(i))
	}
	a.Line = rd.line()
	return a, nil
}

// method parses a method definition, picking up after the opening paren.
func (rd *rdParser) method(name string) (*Method, error) {
	rd.logf("method(%q)", name)
	rd.indent()
	defer rd.dedent()
	m := &Method{Name: name}
	var err error

	// Parse formals
	rd.logf("formals")
	rd.indent()
	for {
		i := rd.next()
		if i.typ == ')' {
			break
		}
		f := &Formal{}
		if i.typ != OBJECTID {
			rd.error("syntax error")
			return nil, fmt.Errorf("Parsing formals of %s, expected OBJECTID; got %s", m.Name, typDebug(i))
		}
		f.Name = i.val
		i = rd.next()
		if i.typ != ':' {
			rd.error("syntax error")
			return nil, fmt.Errorf("Parsing formals of %s, expected colon; got %s", m.Name, typDebug(i))
		}
		i = rd.next()
		if i.typ != TYPEID {
			rd.error("syntax error")
			return nil, fmt.Errorf("Parsing formals of %s, expected type name after colon; got %s", m.Name, typDebug(i))
		}
		f.Type = i.val
		f.Line = rd.line()
		m.Formals = append(m.Formals, f)
		rd.logf("%s: %s", f.Name, f.Type)

		i = rd.next()
		if i.typ == ')' {
			break
		}
		if i.typ != ',' {
			rd.error("syntax error")
			return nil, fmt.Errorf("Parsing formals of %s, comma or close paren after formal; got %s", m.Name, typDebug(i))
		}
	}
	rd.dedent()
	rd.logf("/formals")
	i := rd.next()
	if i.typ != ':' {
		rd.error("syntax error")
		return nil, fmt.Errorf("Method definitions expecting colon; got %s", typDebug(i))
	}
	i = rd.next()
	if i.typ != TYPEID {
		rd.error("syntax error")
		return nil, fmt.Errorf("Method definition expecting type after colon; got %s", typDebug(i))
	}
	m.Type = i.val

	i = rd.next()
	if i.typ != '{' {
		rd.error("syntax error")
		return nil, fmt.Errorf("Method definition expecting opening brace; got %s", typDebug(i))
	}

	m.Expr, err = rd.expr()
	if err != nil {
		return nil, err
	}

	i = rd.next()
	if i.typ != '}' {
		rd.error("syntax error")
		return nil, fmt.Errorf("Method definition expecting closing brace; got %s", typDebug(i))
	}

	i = rd.next()
	if i.typ != ';' {
		rd.error("syntax error")
		return nil, fmt.Errorf("Method definitions end with semicolon; got %s", typDebug(i))
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
	rd.logf("expr (%s)", typDebug(rd.peek()))
	rd.indent()
	defer rd.dedent()
	return rd.exprPrec(PREC_NONE)
}

// exprPrec parses an expression at the given precedence or lower.
func (rd *rdParser) exprPrec(prec precedence) (*Expr, error) {
	i := rd.next()
	pp, ok := prefixParslets[i.typ]
	if !ok {
		rd.error("syntax error")
		return nil, fmt.Errorf("Trying to parse expression; got %s", typDebug(i))
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
	rd.logf("argExprs")
	rd.indent()
	defer rd.logf("/argExprs")
	defer rd.dedent()

	es := []*Expr{}

	for {
		if rd.peek().typ == ')' {
			break
		}
		if len(es) > 0 {
			i := rd.next()
			if i.typ != ',' {
				rd.error("syntax error")
				return nil, fmt.Errorf("Dispatch arguments should be separated by commas; got %s", typDebug(i))
			}
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
	rd.logf("objectid: %s", i.val)
	rd.indent()
	defer rd.logf("/objectid")
	defer rd.dedent()

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

// exprPrefixLet parses a let expression.
func exprPrefixLet(rd *rdParser) (*Expr, error) {
	bindings, err := rd.bindings()
	if err != nil {
		return nil, err
	}
	e, err := rd.expr()
	if err != nil {
		return nil, err
	}
	return MakeLet(bindings, e), nil
}

// exprPrefixNew parses a new expression.
func exprPrefixNew(rd *rdParser) (*Expr, error) {
	e := &Expr{Op: New}
	i := rd.next()
	if i.typ != TYPEID {
		rd.error("syntax error")
		return nil, fmt.Errorf("new expects type name; got %s", typDebug(i))
	}
	e.InternalType = i.val
	e.Line = rd.line()
	return e, nil
}

// exprPrefixWhile parses a while loop expression.
func exprPrefixWhile(rd *rdParser) (*Expr, error) {
	e := &Expr{Op: Loop}
	var err error
	e.Left, err = rd.expr()
	if err != nil {
		return nil, err
	}
	i := rd.next()
	if i.typ != LOOP {
		rd.error("syntax error")
		return nil, fmt.Errorf("while expects 'loop' after condition; got %s", typDebug(i))
	}
	e.Right, err = rd.expr()
	if err != nil {
		return nil, err
	}
	i = rd.next()
	if i.typ != POOL {
		rd.error("syntax error")
		return nil, fmt.Errorf("while expects 'pool' after body; got %s", typDebug(i))
	}
	e.Line = rd.line()
	return e, nil
}

// exprPrefixCase parses a case expression.
func exprPrefixCase(rd *rdParser) (*Expr, error) {
	e := &Expr{Op: TypCase}
	var err error
	e.Left, err = rd.expr()
	if err != nil {
		return nil, err
	}
	i := rd.next()
	if i.typ != OF {
		rd.error("syntax error")
		return nil, fmt.Errorf("case expects 'of' after first expression; got %s", typDebug(i))
	}

	// parse branches of case statement
	for {
		i = rd.next()

		if i.typ == ESAC {
			break
		}

		b := &Expr{Op: Branch}

		if i.typ != OBJECTID {
			rd.error("syntax error")
			return nil, fmt.Errorf("case branch should start with variable name; got %s", typDebug(i))
		}
		b.Text = i.val

		i = rd.next()
		if i.typ != ':' {
			rd.error("syntax error")
			return nil, fmt.Errorf("case branch expects colon after variable name; got %s", typDebug(i))
		}

		i = rd.next()
		if i.typ != TYPEID {
			rd.error("syntax error")
			return nil, fmt.Errorf("case branch expects type after colon; got %s", typDebug(i))
		}
		b.Type = i.val

		i = rd.next()
		if i.typ != DARROW {
			rd.error("syntax error")
			return nil, fmt.Errorf("case branch expects '=>' after type; got %s", typDebug(i))
		}

		var err error
		b.Left, err = rd.expr()
		if err != nil {
			return nil, err
		}

		i = rd.next()
		if i.typ != ';' {
			rd.error("syntax error")
			return nil, fmt.Errorf("case branch ends with semicolon; got %s", typDebug(i))
		}
		b.Line = rd.line()
		e.Exprs = append(e.Exprs, b)
	}

	e.Line = rd.line()
	return e, nil
}

// exprPrefixIf parses an if expression
func exprPrefixIf(rd *rdParser) (*Expr, error) {
	e := &Expr{Op: Cond}
	var err error
	e.Left, err = rd.expr()
	if err != nil {
		return nil, err
	}
	i := rd.next()
	if i.typ != THEN {
		rd.error("syntax error")
		return nil, fmt.Errorf("if expects 'then' after condition; got %s", typDebug(i))
	}
	e.Right, err = rd.expr()
	if err != nil {
		return nil, err
	}
	i = rd.next()
	if i.typ != ELSE {
		rd.error("syntax error")
		return nil, fmt.Errorf("if expects 'else' after first expression; got %s", typDebug(i))
	}
	e.Else, err = rd.expr()
	if err != nil {
		return nil, err
	}
	i = rd.next()
	if i.typ != FI {
		rd.error("syntax error")
		return nil, fmt.Errorf("if expects closing 'fi'; got %s", typDebug(i))
	}
	e.Line = rd.line()
	return e, nil
}

// bindings parses a set of "let" bindings, consuming the IN token
// before returning.
func (rd *rdParser) bindings() ([]*Expr, error) {
	es := []*Expr{}

	for {
		line := rd.line()
		i := rd.next()
		if i.typ != OBJECTID {
			rd.error("syntax error")
			return nil, fmt.Errorf("Bindings should start with object name; got %s", typDebug(i))
		}
		e := &Expr{Op: Placeholder, Text: i.val, Base: Base{Line: line}}
		i = rd.next()
		if i.typ != ':' {
			rd.error("syntax error")
			return nil, fmt.Errorf("Bindings expect colon after name; got %s", typDebug(i))
		}
		i = rd.next()
		if i.typ != TYPEID {
			rd.error("syntax error")
			return nil, fmt.Errorf("Bindings expect type after colon; got %s", typDebug(i))
		}
		e.Type = i.val
		var err error
		if e.Left, err = rd.maybeAssign(); err != nil {
			for {
				i = rd.peek()
				if i.typ == ',' || i.typ == IN {
					break
				}
				rd.next()
			}
		}
		es = append(es, e)
		i = rd.next()
		if i.typ == IN {
			return es, nil
		}
		if i.typ != ',' {
			rd.error("syntax error")
			return nil, fmt.Errorf("Binding can be followed by comma, or IN; got %s", typDebug(i))
		}
	}
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
	panic(fmt.Sprintf("exprNumStringBool: expected num/string/bool; ; got %s", typDebug(i)))
}

// exprPrefixNeg parses a negation expression (~)
func exprPrefixNeg(rd *rdParser) (*Expr, error) {
	e, err := rd.exprPrec(PREC_NEG)
	if err != nil {
		return nil, err
	}
	return &Expr{Op: Neg, Left: e, Text: "~", Base: Base{Line: e.Line}}, nil
}

// exprPrefixNot parses a not (complement) expression
func exprPrefixNot(rd *rdParser) (*Expr, error) {
	e, err := rd.exprPrec(PREC_NOT)
	if err != nil {
		return nil, err
	}
	return &Expr{Op: Comp, Left: e, Base: Base{Line: e.Line}}, nil
}

// exprPrefixIsvoid parses an isvoid expression
func exprPrefixIsvoid(rd *rdParser) (*Expr, error) {
	e, err := rd.exprPrec(PREC_ISVOID)
	if err != nil {
		return nil, err
	}
	return &Expr{Op: Isvoid, Left: e, Base: Base{Line: e.Line}}, nil
}

// exprPrefixParenthesized parses a parenthesized expression.
func exprPrefixParenthesized(rd *rdParser) (*Expr, error) {
	e, err := rd.expr()
	if err != nil {
		return nil, err
	}
	i := rd.next()
	if i.typ != ')' {
		rd.error("syntax error")
		return nil, fmt.Errorf("Parenthesized expression should end with ')'; got %s", typDebug(i))
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
			rd.next()
			return &Expr{Op: Block, Exprs: es, Base: Base{Line: rd.line()}}, nil
		}
		e, err := rd.expr()
		if err != nil {
			for {
				i = rd.peek()
				if i.typ == ';' {
					break
				}
				rd.next()
			}
		}
		es = append(es, e)
		i = rd.next()
		if i.typ != ';' {
			rd.error("syntax error")
			return nil, fmt.Errorf("Expression should end with semicolon; got %s", typDebug(i))
		}
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
		rd.error("syntax error")
		return nil, fmt.Errorf("Dispatch expects method name after dot; got %s", typDebug(i))
	}
	e.Text = i.val
	i = rd.next()
	if i.typ != '(' {
		rd.error("syntax error")
		return nil, fmt.Errorf("Dispatch expecting opening paren; got %s", typDebug(i))
	}
	es, err := rd.argExprs()
	if err != nil {
		return nil, err
	}
	e.Exprs = es
	e.Line = rd.line()
	return e, nil
}

// exprInfixStaticDispatch handles static dispatch.
func exprInfixStaticDispatch(rd *rdParser, left *Expr) (*Expr, error) {
	e := &Expr{Op: StaticDispatch, Left: left}
	i := rd.next()
	if i.typ != TYPEID {
		rd.error("syntax error")
		return nil, fmt.Errorf("Static dispatch expects type name after @; got %s", typDebug(i))
	}
	e.InternalType = i.val
	i = rd.next()
	if i.typ != '.' {
		rd.error("syntax error")
		return nil, fmt.Errorf("Static dispatch expects period after type name; got %s", typDebug(i))
	}
	i = rd.next()
	if i.typ != OBJECTID {
		rd.error("syntax error")
		return nil, fmt.Errorf("Static dispatch expects method name after dot; got %s", typDebug(i))
	}
	e.Text = i.val
	i = rd.next()
	if i.typ != '(' {
		rd.error("syntax error")
		return nil, fmt.Errorf("Static dispatch expecting opening paren; got %s", typDebug(i))
	}
	es, err := rd.argExprs()
	if err != nil {
		return nil, err
	}
	e.Exprs = es
	e.Line = rd.line()
	return e, nil
}

func operator(typ int, op ExprOp, prec precedence, parslets map[int]infixInfo) {
	f := func(rd *rdParser, left *Expr) (*Expr, error) {
		line := rd.line()
		right, err := rd.exprPrec(prec)
		if err != nil {
			return nil, err
		}
		return &Expr{Op: op, Left: left, Text: string(typ), Right: right, Base: Base{Line: line}}, nil
	}
	parslets[typ] = infixInfo{parslet: f, prec: prec}
}

// exprInfixCmp parses a comparison expression.
func exprInfixCmp(rd *rdParser, left *Expr) (*Expr, error) {
	if left.Op == Leq || left.Op == Eq || left.Op == Lt {
		rd.error("syntax error")
		return nil, fmt.Errorf("Multiple comparisons with %s", typDebug(rd.i))
	}
	line := rd.line()
	op := OpForCmp(rd.i.val)
	right, err := rd.exprPrec(PREC_CMP)
	if err != nil {
		return nil, err
	}
	return &Expr{Op: op, Left: left, Right: right, Base: Base{Line: line}}, nil
}

// --------------- set up parslet maps -----------------------------------
func init() {
	prefixParslets = map[int]prefixParslet{
		OBJECTID: exprPrefixObjectId,
		NUM:      exprPrefixNumStringBool,
		STRING:   exprPrefixNumStringBool,
		BOOL:     exprPrefixNumStringBool,
		NOT:      exprPrefixNot,
		ISVOID:   exprPrefixIsvoid,
		LET:      exprPrefixLet,
		WHILE:    exprPrefixWhile,
		IF:       exprPrefixIf,
		NEW:      exprPrefixNew,
		CASE:     exprPrefixCase,
		'~':      exprPrefixNeg,
		'(':      exprPrefixParenthesized,
		'{':      exprPrefixExprList,
	}

	infixParslets = map[int]infixInfo{
		'.': {
			exprInfixDispatch,
			PREC_DISPATCH,
		},
		'@': {
			exprInfixStaticDispatch,
			PREC_AT,
		},
		CMP: {
			exprInfixCmp,
			PREC_CMP,
		},
	}

	operator('+', Plus, PREC_ADD, infixParslets)
	operator('-', Sub, PREC_ADD, infixParslets)
	operator('*', Mul, PREC_MUL, infixParslets)
	operator('/', Divide, PREC_MUL, infixParslets)
}
