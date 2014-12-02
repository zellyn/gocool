// Grammar for the Cool language.

%{
package parser
%}

%union {
    str      string
    line     int
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
		    yylex.(*lexer).prog = &Program{Classes: $1, Base:Base{Line:$<line>1}}
			return 0
		}
		;

classes:
		class
		{
		    $$ = []*Class{$1}
		    $<line>$ = $1.Line
		}
	|       classes class
		{
		    $$ = append($1, $2)
		    $<line>$ = $2.Line
		}
		;

class:
		CLASS TYPEID inherits '{' features '}' ';'
		{ $$ = &Class{Name: $2, Parent: $3, Features: $5, Filename: yylex.(*lexer).name, Base:Base{Line:$<line>7}} }
	|	error ';'
		{ $$ = &Class{} }
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
		{
		    $$ = append($1, $2)
		    $<line>$ = $2.Line
		}
	|	error ';'
		{ $$ = nil }
		;

feature:
		OBJECTID '(' formals ')' ':' TYPEID '{' expr '}' ';'
		{ $$ = &Feature{Method: &Method{Name: $1, Formals: $3, Type: $6, Expr: $8, Base:Base{Line:$<line>10}}} }
	|       OBJECTID ':' TYPEID maybeassign ';'
		{ $$ = &Feature{Attr: &Attr{Name: $1, Type: $3, Init: $4.Left, Base:Base{Line:$<line>5}}} }
	|	OBJECTID '(' formals ')' ':' TYPEID '{' error '}'
		{ $$ = &Feature{} }
	|	OBJECTID '(' formals error ')' ':' TYPEID '{' expr '}'
		{ $$ = &Feature{} }
		;

maybeassign:
		/* */
		{ $$ = &Expr{Op: Placeholder, Left: &Expr{Op: NoExpr, Base:Base{Line:$<line>0}}} }
	|       ASSIGN expr
		{ $$ = &Expr{Op: Placeholder, Left: $2, Base:Base{Line:$2.Line}} }
		;

formals:
		/* */
		{ $$ = nil }
	|       formal commaformals
		{
		    $$ = append([]*Formal{$1}, $2...)
		    if $2 != nil {
			    $<line>$ = $2[len($2)-1].Line
		    } else {
			$<line>$ = $<line>1
		    }
		}
		;

commaformals:
		/* */
		{ $$ = nil }
	|	commaformals ',' formal
		{
		    $$ = append($1, $3)
    		    $<line>$ = $3.Line
		}
		;

formal:
		OBJECTID ':' TYPEID
		{ $$ = &Formal{Name: $1, Type: $3, Base:Base{Line:$<line>3}} }
		;

expr:
		OBJECTID ASSIGN expr
		{ $$ = &Expr{Op: Assign, Text: $1, Left: $3, Base:Base{Line:$<line>3}} }
	|       expr '@' TYPEID '.' OBJECTID '(' maybeexprs ')'
		{ $$ = &Expr{Op: StaticDispatch, Left: $1, InternalType: $3, Text: $5, Exprs: $7, Base:Base{Line:$<line>8}} }
	|       expr '.' OBJECTID '(' maybeexprs ')'
		{ $$ = &Expr{Op: Dispatch, Left: $1, Text: $3, Exprs: $5, Base:Base{Line:$<line>6}} }
	|       OBJECTID '(' maybeexprs ')'
		{ $$ = &Expr{Op: Dispatch, Left: &Expr{Op:Object, Text: "self", Base:Base{Line: $<line>1}}, Text: $1, Exprs: $3, Base:Base{Line:$<line>4}} }
	|       IF expr THEN expr ELSE expr FI
		{ $$ = &Expr{Op: Cond, Left: $2, Right: $4, Else: $6, Base:Base{Line:$<line>7}} }
	|       WHILE expr LOOP expr POOL
		{ $$ = &Expr{Op: Loop, Left: $2, Right: $4, Base:Base{Line:$<line>5}} }
	|       '{' exprlist '}'
		{ $$ = &Expr{Op: Block, Exprs: $2, Base:Base{Line:$<line>3}} }
	|       LET bindings IN expr
		{ $$ = MakeLet($2, $4) }
	|       CASE expr OF branches ESAC
		{ $$ = &Expr{Op: TypCase, Left: $2, Exprs: $4, Base:Base{Line:$<line>5}} }
	|       NEW TYPEID
		{ $$ = &Expr{Op: New, InternalType: $2, Base:Base{Line:$<line>2}} }
	|       ISVOID expr
		{ $$ = &Expr{Op: Isvoid, Left: $2, Base:Base{Line:$2.Line}} }
	|       expr '+' expr
		{ $$ = &Expr{Op: Plus, Left: $1, Text: "+", Right: $3, Base:Base{Line:$<line>2}} }
	|       expr '-' expr
		{ $$ = &Expr{Op: Sub, Left: $1, Text: "-", Right: $3, Base:Base{Line:$<line>2}} }
	|       expr '*' expr
		{ $$ = &Expr{Op: Mul, Left: $1, Text: "*", Right: $3, Base:Base{Line:$<line>2}} }
	|       expr '/' expr
		{ $$ = &Expr{Op: Divide, Left: $1, Text: "/", Right: $3, Base:Base{Line:$<line>2}} }
	|       '~' expr
		{ $$ = &Expr{Op: Neg, Left: $2, Text: "~", Base:Base{Line:$2.Line}} }
	|       expr CMP expr
		{ $$ = &Expr{Op: OpForCmp($2), Left: $1, Right: $3, Base:Base{Line:$<line>2}} }
	|       NOT expr
		{ $$ = &Expr{Op: Comp, Left: $2, Base:Base{Line:$2.Line}} }
	|       '(' expr ')'
		{
		    $$ = $2
		    $$.Line = $<line>3
		}
	|       OBJECTID
		{ $$ = &Expr{Op: Object, Text: $1, Base:Base{Line:$<line>1}} }
	|       NUM
		{ $$ = &Expr{Op: IntConst, Text: $1, Base:Base{Line:$<line>1}} }
	|     	STRING
		{ $$ = &Expr{Op: StringConst, Text: unescapeString($1), Base:Base{Line:$<line>1}} }
	|	BOOL
		{ $$ = &Expr{Op: BoolConst, Text: $1, Base:Base{Line:$<line>1}} }
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
		expr ';'
		{ $$ = []*Expr{$1} }
	|       exprlist expr ';'
		{ $$ = append($1, $2) }
	|	error ';'
                { $$ = nil }
		;

bindings:
		binding
		{ $$ = []*Expr{$1} }
	|       bindings ',' binding
		{ $$ = append($1, $3) }
	|	error
		{ $$ = nil }
		;

binding:
		OBJECTID ':' TYPEID maybeassign
		{ $$ = &Expr{Op: Placeholder, Text: $1, Type: $3, Left: $4.Left, Base:Base{Line:$<line>0}} }
		;

branches:
		branch
		{ $$ = []*Expr{$1} }
	|	branches branch
		{ $$ = append($1, $2) }
		;

branch:
		OBJECTID ':' TYPEID DARROW expr ';'
		{ $$ = &Expr{Op: Branch, Text: $1, Type: $3, Left: $5, Base:Base{Line:$<line>6}} }
		;
