// Grammar for the Cool language.

%{
package parser
%}

%union {
    str      string
    expr     *Expr
    exprs    []*Expr
    program  *Program
    class    *Class
    classes  []*Class
    formal   *Formal
    formals  []*Formal
    feature  *Feature
    features []*Feature
}


%token	<str>		ASSIGN
%token	<str>		BOOL
%token	<str>		CASE
%token	<str>		CLASS
%token	<str>		CMP
%token	<str>		DARROW
%token	<str>		ELSE
%token	<str>		ERR
%token	<str>		ESAC
%token	<str>		FI
%token	<str>		IF
%token	<str>		IN
%token	<str>		INHERITS
%token	<str>		ISVOID
%token	<str>		LE
%token	<str>		LET
%token	<str>		LOOP
%token	<str>		NEW
%token	<str>		NOT
%token	<str>		NUM
%token	<str>		OBJECTID
%token	<str>		OF
%token	<str>		POOL
%token	<str>		STRING
%token	<str>		THEN
%token	<str>		TYPEID
%token	<str>		WHILE

%type	<expr>		expr
%type	<exprs>		bindings
%type	<expr>		binding
%type	<expr>		maybeassign
%type	<exprs>		exprs
%type	<exprs>		maybeexprs
%type	<exprs>		exprlist
%type	<expr>		branch
%type	<exprs>		branches

%type	<program>	prog
%type	<classes>	classes
%type	<class>		class
%type	<str>		inherits
%type	<features>	features
%type	<feature>	feature
%type	<formals>	formals
%type	<formals>	commaformals
%type	<formal>	formal

/* Precision */
%left			IN
%right			ASSIGN
%left			NOT
%nonassoc		CMP
%left			'+' '-'
%left			'*' '/'
%left			ISVOID
%left			'~'
%left			'@'
%left			'.'

%%

prog:
		classes
		{
		    yylex.(*lexer).prog = &Program{Classes: $1}
			return 0
		}
		;

classes:
		/* */
		{ $$ = nil }
	|       classes class
		{ $$ = append($1, $2) }
		;

class:
		CLASS TYPEID inherits '{' features '}' ';'
		{ $$ = &Class{Name: $2, Parent: $3, Features: $5, Filename: "dummy"} }
		;

inherits:
		/* */
		{ $$ = "Object" }
	|       INHERITS TYPEID
		{ $$ = $2 }
		;

features:
		/* */
		{ $$ = nil }
	|       features feature
		{ $$ = append($1, $2) }
		;

feature:
		OBJECTID '(' formals ')' ':' TYPEID '{' expr '}' ';'
		{ $$ = &Feature{Method: &Method{Name: $1, Formals: $3, Type: $6, Expr: $8}} }
	|       OBJECTID ':' TYPEID maybeassign ';'
		{ $$ = &Feature{Attr: &Attr{Name: $1, Type: $3, Init: $4}} }
		;

maybeassign:
		/* */
		{ $$ = &Expr{Op: Placeholder} }
	|       ASSIGN expr
		{ $$ = &Expr{Op: Placeholder, Left: $2} }
		;

formals:
		/* */
		{ $$ = nil }
	|       formal commaformals
		{ $$ = append([]*Formal{$1}, $2...) }
		;

commaformals:
		/* */
		{ $$ = nil }
	|	commaformals ',' formal
		{ $$ = append($1, $3) }
		;

formal:
		OBJECTID ':' TYPEID
		{ $$ = &Formal{Name: $1, Type: $3} }
		;

expr:
		OBJECTID ASSIGN expr
		{ $$ = &Expr{Op: Assign, Text: $1, Left: $3} }
	|       expr '@' TYPEID '.' OBJECTID '(' maybeexprs ')'
		{ $$ = &Expr{Op: StaticDispatch, Left: $1, Type: $3, Text: $5, Exprs: $7} }
	|       expr '.' OBJECTID '(' maybeexprs ')'
		{ $$ = &Expr{Op: Dispatch, Left: $1, Text: $3, Exprs: $5} }
	|       OBJECTID '(' maybeexprs ')'
		{ $$ = &Expr{Op: Dispatch, Left: &Expr{Op:Object, Text: "self"}, Text: $1, Exprs: $3} }
	|       IF expr THEN expr ELSE expr FI
		{ $$ = &Expr{Op: If, Left: $2, Right: $4, Else: $6} }
	|       WHILE expr LOOP expr POOL
		{ $$ = &Expr{Op: While, Left: $2, Right: $4} }
	|       '{' exprlist '}'
		{ $$ = &Expr{Op: Block, Exprs: $2} }
	|       LET bindings IN expr
		{ $$ = MakeLet($2, $4) }
	|       CASE expr OF branches ESAC
		{ $$ = &Expr{Op: TypCase, Left: $2, Exprs: $4} }
	|       NEW TYPEID
		{ $$ = &Expr{Op: New, Text: $2} }
	|       ISVOID expr
		{ $$ = &Expr{Op: Isvoid, Left: $2} }
	|       expr '+' expr
		{ $$ = &Expr{Op: Plus, Left: $1, Right: $3} }
	|       expr '-' expr
		{ $$ = &Expr{Op: Sub, Left: $1, Right: $3} }
	|       expr '*' expr
		{ $$ = &Expr{Op: Mul, Left: $1, Right: $3} }
	|       expr '/' expr
		{ $$ = &Expr{Op: Divide, Left: $1, Right: $3} }
	|       '~' expr
		{ $$ = &Expr{Op: Neg, Left: $2} }
	|       expr CMP expr
		{ $$ = &Expr{Op: OpForCmp($2), Left: $1, Right: $3} }
	|       NOT expr
		{ $$ = &Expr{Op: Comp, Text: $1} }
	|       '(' expr ')'
		{ $$ = $2 }
	|       OBJECTID
		{ $$ = &Expr{Op: Object, Text: $1} }
	|       NUM
		{ $$ = &Expr{Op: IntConst, Text: $1} }
	|     	STRING
		{ $$ = &Expr{Op: StringConst, Text: $1} }
	|	BOOL
		{ $$ = &Expr{Op: BoolConst, Text: $1} }
		;

maybeexprs:
		/* */
		{ $$ = nil }
	|       exprs
		{ $$ = $1 }
		;

exprs:
		expr
		{ $$ = []*Expr{$1} }
	|       exprs ',' expr
		{ $$ = append($1, $3) }
		;

exprlist:
		/* */
		{ $$ = nil }
	|       exprlist expr ';'
		{ $$ = append($1, $2) }
		;

bindings:
		binding
		{ $$ = []*Expr{$1} }
	|       bindings ',' binding
		{ $$ = append($1, $3) }
		;

binding:
		OBJECTID ':' TYPEID maybeassign
		{ $$ = &Expr{Op: Placeholder, Text: $1, Left: $4.Left} }
		;

branches:
		branch
		{ $$ = []*Expr{$1} }
	|	branches branch
		{ $$ = append($1, $2) }
		;

branch:
		OBJECTID ':' TYPEID DARROW expr ';'
		{ $$ = &Expr{Op: Branch, Text: $1, Type: $3, Left: $5} }
		;
