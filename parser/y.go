//line cool.y:4
package parser

import __yyfmt__ "fmt"

//line cool.y:4
//line cool.y:7
type yySymType struct {
	yys      int
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

const ASSIGN = 57346
const BOOL = 57347
const CASE = 57348
const CLASS = 57349
const CMP = 57350
const DARROW = 57351
const ELSE = 57352
const ERR = 57353
const ESAC = 57354
const FI = 57355
const IF = 57356
const IN = 57357
const INHERITS = 57358
const ISVOID = 57359
const LE = 57360
const LET = 57361
const LOOP = 57362
const NEW = 57363
const NOT = 57364
const NUM = 57365
const OBJECTID = 57366
const OF = 57367
const POOL = 57368
const STRING = 57369
const THEN = 57370
const TYPEID = 57371
const WHILE = 57372

var yyToknames = []string{
	"ASSIGN",
	"BOOL",
	"CASE",
	"CLASS",
	"CMP",
	"DARROW",
	"ELSE",
	"ERR",
	"ESAC",
	"FI",
	"IF",
	"IN",
	"INHERITS",
	"ISVOID",
	"LE",
	"LET",
	"LOOP",
	"NEW",
	"NOT",
	"NUM",
	"OBJECTID",
	"OF",
	"POOL",
	"STRING",
	"THEN",
	"TYPEID",
	"WHILE",
	"'+'",
	"'-'",
	"'*'",
	"'/'",
	"'~'",
	"'@'",
	"'.'",
}
var yyStatenames = []string{}

const yyEofCode = 1
const yyErrCode = 2
const yyMaxDepth = 200

//line yacctab:1
var yyExca = []int{
	-1, 1,
	1, -1,
	-2, 0,
	-1, 2,
	1, 1,
	-2, 0,
	-1, 11,
	24, 8,
	39, 8,
	-2, 0,
	-1, 87,
	8, 0,
	-2, 38,
}

const yyNprod = 59
const yyPrivate = 57344

var yyTokenNames []string
var yyStates []string

const yyLast = 321

var yyAct = []int{

	91, 89, 117, 70, 30, 61, 98, 109, 34, 20,
	130, 21, 100, 53, 32, 29, 140, 134, 108, 33,
	57, 58, 59, 60, 27, 55, 56, 133, 57, 58,
	59, 60, 37, 55, 56, 99, 107, 105, 131, 102,
	64, 65, 67, 97, 73, 62, 75, 76, 77, 78,
	36, 59, 60, 104, 55, 56, 51, 43, 83, 84,
	85, 86, 87, 88, 26, 39, 19, 95, 45, 18,
	42, 8, 44, 47, 49, 38, 17, 120, 50, 106,
	103, 40, 63, 55, 56, 136, 46, 79, 61, 41,
	125, 15, 48, 110, 111, 11, 23, 115, 81, 113,
	80, 74, 52, 114, 35, 25, 121, 12, 7, 123,
	124, 57, 58, 59, 60, 71, 55, 56, 128, 129,
	127, 122, 118, 72, 82, 24, 135, 51, 43, 139,
	118, 54, 10, 5, 31, 137, 39, 72, 4, 45,
	141, 42, 14, 44, 47, 49, 38, 68, 28, 50,
	51, 43, 40, 3, 22, 16, 6, 46, 13, 39,
	41, 94, 45, 48, 42, 9, 44, 47, 49, 38,
	2, 1, 50, 51, 43, 40, 116, 66, 90, 69,
	46, 0, 39, 41, 0, 45, 48, 42, 61, 44,
	47, 49, 38, 0, 0, 50, 0, 0, 40, 61,
	0, 0, 0, 46, 0, 0, 41, 0, 0, 48,
	61, 57, 58, 59, 60, 0, 55, 56, 0, 0,
	142, 61, 57, 58, 59, 60, 0, 55, 56, 0,
	61, 112, 0, 57, 58, 59, 60, 0, 55, 56,
	0, 0, 96, 61, 57, 58, 59, 60, 138, 55,
	56, 0, 132, 57, 58, 59, 60, 61, 55, 56,
	0, 119, 0, 0, 0, 0, 57, 58, 59, 60,
	61, 55, 56, 0, 0, 126, 0, 61, 0, 0,
	57, 58, 59, 60, 61, 55, 56, 101, 0, 93,
	0, 61, 0, 57, 58, 59, 60, 0, 55, 56,
	57, 58, 59, 60, 92, 55, 56, 57, 58, 59,
	60, 0, 55, 56, 57, 58, 59, 60, 0, 55,
	56,
}
var yyPact = []int{

	131, -1000, 131, -1000, 79, 31, -1000, 116, -1000, 57,
	78, 140, -1000, 52, 29, 26, -1000, -32, -1000, -1000,
	101, 76, 22, -1000, -28, 130, -29, -23, -36, 75,
	10, 168, 73, -30, 101, -1000, -1000, 283, 41, 168,
	168, 145, 113, 168, 72, 168, 168, 168, 168, -1000,
	-1000, -1000, 49, 71, -1000, 69, 100, 168, 168, 168,
	168, 168, 168, 168, 276, 269, 122, 202, 3, -9,
	-1000, -1000, -31, 262, -1000, 47, 47, 283, -3, 51,
	-1, 42, -5, 18, 18, 47, 47, -11, 283, -24,
	-37, 283, 168, 168, -1000, 191, -1000, -1000, 168, 99,
	68, 98, -1000, 222, 38, 168, 97, 168, -1000, 168,
	80, 249, -1000, 283, -1000, 130, 106, -1000, -33, -2,
	-1000, 213, -14, -25, 283, 168, -1000, -1000, -1000, -1000,
	56, -1000, -1000, 168, -1000, 235, 120, -26, -1000, 168,
	-1000, 180, -1000,
}
var yyPgo = []int{

	0, 0, 179, 3, 4, 178, 1, 177, 2, 176,
	171, 170, 153, 165, 158, 155, 154, 148, 96,
}
var yyR1 = []int{

	0, 10, 11, 11, 12, 12, 13, 13, 14, 14,
	14, 15, 15, 15, 15, 4, 4, 16, 16, 17,
	17, 18, 1, 1, 1, 1, 1, 1, 1, 1,
	1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
	1, 1, 1, 1, 1, 6, 6, 5, 5, 7,
	7, 7, 2, 2, 2, 3, 9, 9, 8,
}
var yyR2 = []int{

	0, 1, 1, 2, 7, 2, 0, 2, 0, 2,
	2, 10, 5, 9, 10, 0, 2, 0, 2, 0,
	3, 3, 3, 8, 6, 4, 7, 5, 3, 4,
	5, 2, 2, 3, 3, 3, 3, 2, 3, 2,
	3, 1, 1, 1, 1, 0, 1, 1, 3, 2,
	3, 2, 1, 3, 1, 4, 1, 2, 6,
}
var yyChk = []int{

	-1000, -10, -11, -12, 7, 2, -12, 29, 40, -13,
	16, 38, 29, -14, 2, 39, -15, 24, 40, 40,
	41, 43, -16, -18, 24, 29, 42, 2, -17, 43,
	-4, 4, 43, 42, 44, 29, 40, -1, 24, 14,
	30, 38, 19, 6, 21, 17, 35, 22, 41, 23,
	27, 5, 29, 43, -18, 36, 37, 31, 32, 33,
	34, 8, 4, 41, -1, -1, -7, -1, 2, -2,
	-3, 2, 24, -1, 29, -1, -1, -1, -1, 38,
	29, 29, 24, -1, -1, -1, -1, -1, -1, -6,
	-5, -1, 28, 20, 39, -1, 40, 40, 15, 44,
	43, 25, 42, -1, 2, 38, 37, 41, 42, 44,
	-1, -1, 40, -1, -3, 29, -9, -8, 24, 39,
	39, -1, 24, -6, -1, 10, 26, -4, 12, -8,
	43, 40, 39, 41, 42, -1, 29, -6, 13, 9,
	42, -1, 40,
}
var yyDef = []int{

	0, -2, -2, 2, 0, 0, 3, 6, 5, 0,
	0, -2, 7, 0, 0, 0, 9, 0, 10, 4,
	17, 0, 0, 19, 0, 15, 0, 0, 18, 0,
	0, 0, 0, 0, 0, 21, 12, 16, 41, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 42,
	43, 44, 0, 0, 20, 0, 0, 0, 0, 0,
	0, 0, 0, 45, 0, 0, 0, 0, 0, 0,
	52, 54, 0, 0, 31, 32, 37, 39, 0, 0,
	0, 0, 0, 33, 34, 35, 36, -2, 22, 0,
	46, 47, 0, 0, 28, 0, 49, 51, 0, 0,
	0, 0, 40, 0, 0, 0, 0, 45, 25, 0,
	0, 0, 50, 29, 53, 15, 0, 56, 0, 0,
	13, 0, 0, 0, 48, 0, 27, 55, 30, 57,
	0, 11, 14, 45, 24, 0, 0, 0, 26, 0,
	23, 0, 58,
}
var yyTok1 = []int{

	1, 3, 3, 3, 3, 3, 3, 3, 3, 3,
	3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
	3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
	3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
	41, 42, 33, 31, 44, 32, 37, 34, 3, 3,
	3, 3, 3, 3, 3, 3, 3, 3, 43, 40,
	3, 3, 3, 3, 36, 3, 3, 3, 3, 3,
	3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
	3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
	3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
	3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
	3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
	3, 3, 3, 38, 3, 39, 35,
}
var yyTok2 = []int{

	2, 3, 4, 5, 6, 7, 8, 9, 10, 11,
	12, 13, 14, 15, 16, 17, 18, 19, 20, 21,
	22, 23, 24, 25, 26, 27, 28, 29, 30,
}
var yyTok3 = []int{
	0,
}

//line yaccpar:1

/*	parser for yacc output	*/

var yyDebug = 0

type yyLexer interface {
	Lex(lval *yySymType) int
	Error(s string)
}

const yyFlag = -1000

func yyTokname(c int) string {
	// 4 is TOKSTART above
	if c >= 4 && c-4 < len(yyToknames) {
		if yyToknames[c-4] != "" {
			return yyToknames[c-4]
		}
	}
	return __yyfmt__.Sprintf("tok-%v", c)
}

func yyStatname(s int) string {
	if s >= 0 && s < len(yyStatenames) {
		if yyStatenames[s] != "" {
			return yyStatenames[s]
		}
	}
	return __yyfmt__.Sprintf("state-%v", s)
}

func yylex1(lex yyLexer, lval *yySymType) int {
	c := 0
	char := lex.Lex(lval)
	if char <= 0 {
		c = yyTok1[0]
		goto out
	}
	if char < len(yyTok1) {
		c = yyTok1[char]
		goto out
	}
	if char >= yyPrivate {
		if char < yyPrivate+len(yyTok2) {
			c = yyTok2[char-yyPrivate]
			goto out
		}
	}
	for i := 0; i < len(yyTok3); i += 2 {
		c = yyTok3[i+0]
		if c == char {
			c = yyTok3[i+1]
			goto out
		}
	}

out:
	if c == 0 {
		c = yyTok2[1] /* unknown char */
	}
	if yyDebug >= 3 {
		__yyfmt__.Printf("lex %s(%d)\n", yyTokname(c), uint(char))
	}
	return c
}

func yyParse(yylex yyLexer) int {
	var yyn int
	var yylval yySymType
	var yyVAL yySymType
	yyS := make([]yySymType, yyMaxDepth)

	Nerrs := 0   /* number of errors */
	Errflag := 0 /* error recovery flag */
	yystate := 0
	yychar := -1
	yyp := -1
	goto yystack

ret0:
	return 0

ret1:
	return 1

yystack:
	/* put a state and value onto the stack */
	if yyDebug >= 4 {
		__yyfmt__.Printf("char %v in %v\n", yyTokname(yychar), yyStatname(yystate))
	}

	yyp++
	if yyp >= len(yyS) {
		nyys := make([]yySymType, len(yyS)*2)
		copy(nyys, yyS)
		yyS = nyys
	}
	yyS[yyp] = yyVAL
	yyS[yyp].yys = yystate

yynewstate:
	yyn = yyPact[yystate]
	if yyn <= yyFlag {
		goto yydefault /* simple state */
	}
	if yychar < 0 {
		yychar = yylex1(yylex, &yylval)
	}
	yyn += yychar
	if yyn < 0 || yyn >= yyLast {
		goto yydefault
	}
	yyn = yyAct[yyn]
	if yyChk[yyn] == yychar { /* valid shift */
		yychar = -1
		yyVAL = yylval
		yystate = yyn
		if Errflag > 0 {
			Errflag--
		}
		goto yystack
	}

yydefault:
	/* default state action */
	yyn = yyDef[yystate]
	if yyn == -2 {
		if yychar < 0 {
			yychar = yylex1(yylex, &yylval)
		}

		/* look through exception table */
		xi := 0
		for {
			if yyExca[xi+0] == -1 && yyExca[xi+1] == yystate {
				break
			}
			xi += 2
		}
		for xi += 2; ; xi += 2 {
			yyn = yyExca[xi+0]
			if yyn < 0 || yyn == yychar {
				break
			}
		}
		yyn = yyExca[xi+1]
		if yyn < 0 {
			goto ret0
		}
	}
	if yyn == 0 {
		/* error ... attempt to resume parsing */
		switch Errflag {
		case 0: /* brand new error */
			yylex.Error("syntax error")
			Nerrs++
			if yyDebug >= 1 {
				__yyfmt__.Printf("%s", yyStatname(yystate))
				__yyfmt__.Printf(" saw %s\n", yyTokname(yychar))
			}
			fallthrough

		case 1, 2: /* incompletely recovered error ... try again */
			Errflag = 3

			/* find a state where "error" is a legal shift action */
			for yyp >= 0 {
				yyn = yyPact[yyS[yyp].yys] + yyErrCode
				if yyn >= 0 && yyn < yyLast {
					yystate = yyAct[yyn] /* simulate a shift of "error" */
					if yyChk[yystate] == yyErrCode {
						goto yystack
					}
				}

				/* the current p has no shift on "error", pop stack */
				if yyDebug >= 2 {
					__yyfmt__.Printf("error recovery pops state %d\n", yyS[yyp].yys)
				}
				yyp--
			}
			/* there is no state on the stack with an error shift ... abort */
			goto ret1

		case 3: /* no shift yet; clobber input char */
			if yyDebug >= 2 {
				__yyfmt__.Printf("error recovery discards %s\n", yyTokname(yychar))
			}
			if yychar == yyEofCode {
				goto ret1
			}
			yychar = -1
			goto yynewstate /* try again in the same state */
		}
	}

	/* reduction by production yyn */
	if yyDebug >= 2 {
		__yyfmt__.Printf("reduce %v in:\n\t%v\n", yyn, yyStatname(yystate))
	}

	yynt := yyn
	yypt := yyp
	_ = yypt // guard against "declared and not used"

	yyp -= yyR2[yyn]
	yyVAL = yyS[yyp+1]

	/* consult goto table to find next state */
	yyn = yyR1[yyn]
	yyg := yyPgo[yyn]
	yyj := yyg + yyS[yyp].yys + 1

	if yyj >= yyLast {
		yystate = yyAct[yyg]
	} else {
		yystate = yyAct[yyj]
		if yyChk[yystate] != -yyn {
			yystate = yyAct[yyg]
		}
	}
	// dummy call; replaced with literal code
	switch yynt {

	case 1:
		//line cool.y:86
		{
			yylex.(*lexer).prog = &Program{Classes: yyS[yypt-0].classes, Base: Base{Line: yyS[yypt-0].line}}
			return 0
		}
	case 2:
		//line cool.y:94
		{
			yyVAL.classes = []*Class{yyS[yypt-0].class}
			yyVAL.line = yyS[yypt-0].class.Line
		}
	case 3:
		//line cool.y:99
		{
			yyVAL.classes = append(yyS[yypt-1].classes, yyS[yypt-0].class)
			yyVAL.line = yyS[yypt-0].class.Line
		}
	case 4:
		//line cool.y:107
		{
			yyVAL.class = &Class{Name: yyS[yypt-5].str, Parent: yyS[yypt-4].str, Features: yyS[yypt-2].features, Filename: yylex.(*lexer).name, Base: Base{Line: yyS[yypt-0].line}}
		}
	case 5:
		//line cool.y:109
		{
			yyVAL.class = &Class{}
		}
	case 6:
		//line cool.y:114
		{
			yyVAL.str = "Object"
		}
	case 7:
		//line cool.y:116
		{
			yyVAL.str = yyS[yypt-0].str
		}
	case 8:
		//line cool.y:121
		{
			yyVAL.features = nil
		}
	case 9:
		//line cool.y:123
		{
			yyVAL.features = append(yyS[yypt-1].features, yyS[yypt-0].feature)
			yyVAL.line = yyS[yypt-0].feature.Line
		}
	case 10:
		//line cool.y:128
		{
			yyVAL.features = nil
		}
	case 11:
		//line cool.y:133
		{
			yyVAL.feature = &Feature{Method: &Method{Name: yyS[yypt-9].str, Formals: yyS[yypt-7].formals, Type: yyS[yypt-4].str, Expr: yyS[yypt-2].expr, Base: Base{Line: yyS[yypt-0].line}}}
		}
	case 12:
		//line cool.y:135
		{
			yyVAL.feature = &Feature{Attr: &Attr{Name: yyS[yypt-4].str, Type: yyS[yypt-2].str, Init: yyS[yypt-1].expr.Left, Base: Base{Line: yyS[yypt-0].line}}}
		}
	case 13:
		//line cool.y:137
		{
			yyVAL.feature = &Feature{}
		}
	case 14:
		//line cool.y:139
		{
			yyVAL.feature = &Feature{}
		}
	case 15:
		//line cool.y:144
		{
			yyVAL.expr = &Expr{Op: Placeholder, Left: &Expr{Op: NoExpr, Base: Base{Line: yyS[yypt-0].line}}}
		}
	case 16:
		//line cool.y:146
		{
			yyVAL.expr = &Expr{Op: Placeholder, Left: yyS[yypt-0].expr, Base: Base{Line: yyS[yypt-0].expr.Line}}
		}
	case 17:
		//line cool.y:151
		{
			yyVAL.formals = nil
		}
	case 18:
		//line cool.y:153
		{
			yyVAL.formals = append([]*Formal{yyS[yypt-1].formal}, yyS[yypt-0].formals...)
			if yyS[yypt-0].formals != nil {
				yyVAL.line = yyS[yypt-0].formals[len(yyS[yypt-0].formals)-1].Line
			} else {
				yyVAL.line = yyS[yypt-1].line
			}
		}
	case 19:
		//line cool.y:165
		{
			yyVAL.formals = nil
		}
	case 20:
		//line cool.y:167
		{
			yyVAL.formals = append(yyS[yypt-2].formals, yyS[yypt-0].formal)
			yyVAL.line = yyS[yypt-0].formal.Line
		}
	case 21:
		//line cool.y:175
		{
			yyVAL.formal = &Formal{Name: yyS[yypt-2].str, Type: yyS[yypt-0].str, Base: Base{Line: yyS[yypt-0].line}}
		}
	case 22:
		//line cool.y:180
		{
			yyVAL.expr = &Expr{Op: Assign, Text: yyS[yypt-2].str, Left: yyS[yypt-0].expr, Base: Base{Line: yyS[yypt-0].line}}
		}
	case 23:
		//line cool.y:182
		{
			yyVAL.expr = &Expr{Op: StaticDispatch, Left: yyS[yypt-7].expr, InternalType: yyS[yypt-5].str, Text: yyS[yypt-3].str, Exprs: yyS[yypt-1].exprs, Base: Base{Line: yyS[yypt-0].line}}
		}
	case 24:
		//line cool.y:184
		{
			yyVAL.expr = &Expr{Op: Dispatch, Left: yyS[yypt-5].expr, Text: yyS[yypt-3].str, Exprs: yyS[yypt-1].exprs, Base: Base{Line: yyS[yypt-0].line}}
		}
	case 25:
		//line cool.y:186
		{
			yyVAL.expr = &Expr{Op: Dispatch, Left: &Expr{Op: Object, Text: "self", Base: Base{Line: yyS[yypt-3].line}}, Text: yyS[yypt-3].str, Exprs: yyS[yypt-1].exprs, Base: Base{Line: yyS[yypt-0].line}}
		}
	case 26:
		//line cool.y:188
		{
			yyVAL.expr = &Expr{Op: Cond, Left: yyS[yypt-5].expr, Right: yyS[yypt-3].expr, Else: yyS[yypt-1].expr, Base: Base{Line: yyS[yypt-0].line}}
		}
	case 27:
		//line cool.y:190
		{
			yyVAL.expr = &Expr{Op: Loop, Left: yyS[yypt-3].expr, Right: yyS[yypt-1].expr, Base: Base{Line: yyS[yypt-0].line}}
		}
	case 28:
		//line cool.y:192
		{
			yyVAL.expr = &Expr{Op: Block, Exprs: yyS[yypt-1].exprs, Base: Base{Line: yyS[yypt-0].line}}
		}
	case 29:
		//line cool.y:194
		{
			yyVAL.expr = MakeLet(yyS[yypt-2].exprs, yyS[yypt-0].expr)
		}
	case 30:
		//line cool.y:196
		{
			yyVAL.expr = &Expr{Op: TypCase, Left: yyS[yypt-3].expr, Exprs: yyS[yypt-1].exprs, Base: Base{Line: yyS[yypt-0].line}}
		}
	case 31:
		//line cool.y:198
		{
			yyVAL.expr = &Expr{Op: New, InternalType: yyS[yypt-0].str, Base: Base{Line: yyS[yypt-0].line}}
		}
	case 32:
		//line cool.y:200
		{
			yyVAL.expr = &Expr{Op: Isvoid, Left: yyS[yypt-0].expr, Base: Base{Line: yyS[yypt-0].expr.Line}}
		}
	case 33:
		//line cool.y:202
		{
			yyVAL.expr = &Expr{Op: Plus, Left: yyS[yypt-2].expr, Text: "+", Right: yyS[yypt-0].expr, Base: Base{Line: yyS[yypt-1].line}}
		}
	case 34:
		//line cool.y:204
		{
			yyVAL.expr = &Expr{Op: Sub, Left: yyS[yypt-2].expr, Text: "-", Right: yyS[yypt-0].expr, Base: Base{Line: yyS[yypt-1].line}}
		}
	case 35:
		//line cool.y:206
		{
			yyVAL.expr = &Expr{Op: Mul, Left: yyS[yypt-2].expr, Text: "*", Right: yyS[yypt-0].expr, Base: Base{Line: yyS[yypt-1].line}}
		}
	case 36:
		//line cool.y:208
		{
			yyVAL.expr = &Expr{Op: Divide, Left: yyS[yypt-2].expr, Text: "/", Right: yyS[yypt-0].expr, Base: Base{Line: yyS[yypt-1].line}}
		}
	case 37:
		//line cool.y:210
		{
			yyVAL.expr = &Expr{Op: Neg, Left: yyS[yypt-0].expr, Text: "~", Base: Base{Line: yyS[yypt-0].expr.Line}}
		}
	case 38:
		//line cool.y:212
		{
			yyVAL.expr = &Expr{Op: OpForCmp(yyS[yypt-1].str), Left: yyS[yypt-2].expr, Right: yyS[yypt-0].expr, Base: Base{Line: yyS[yypt-1].line}}
		}
	case 39:
		//line cool.y:214
		{
			yyVAL.expr = &Expr{Op: Comp, Left: yyS[yypt-0].expr, Base: Base{Line: yyS[yypt-0].expr.Line}}
		}
	case 40:
		//line cool.y:216
		{
			yyVAL.expr = yyS[yypt-1].expr
			yyVAL.expr.Line = yyS[yypt-0].line
		}
	case 41:
		//line cool.y:221
		{
			yyVAL.expr = &Expr{Op: Object, Text: yyS[yypt-0].str, Base: Base{Line: yyS[yypt-0].line}}
		}
	case 42:
		//line cool.y:223
		{
			yyVAL.expr = &Expr{Op: IntConst, Text: yyS[yypt-0].str, Base: Base{Line: yyS[yypt-0].line}}
		}
	case 43:
		//line cool.y:225
		{
			yyVAL.expr = &Expr{Op: StringConst, Text: unescapeString(yyS[yypt-0].str), Base: Base{Line: yyS[yypt-0].line}}
		}
	case 44:
		//line cool.y:227
		{
			yyVAL.expr = &Expr{Op: BoolConst, Text: yyS[yypt-0].str, Base: Base{Line: yyS[yypt-0].line}}
		}
	case 45:
		//line cool.y:232
		{
			yyVAL.exprs = nil
		}
	case 46:
		//line cool.y:234
		{
			yyVAL.exprs = yyS[yypt-0].exprs
		}
	case 47:
		//line cool.y:239
		{
			yyVAL.exprs = []*Expr{yyS[yypt-0].expr}
		}
	case 48:
		//line cool.y:241
		{
			yyVAL.exprs = append(yyS[yypt-2].exprs, yyS[yypt-0].expr)
		}
	case 49:
		//line cool.y:246
		{
			yyVAL.exprs = []*Expr{yyS[yypt-1].expr}
		}
	case 50:
		//line cool.y:248
		{
			yyVAL.exprs = append(yyS[yypt-2].exprs, yyS[yypt-1].expr)
		}
	case 51:
		//line cool.y:250
		{
			yyVAL.exprs = nil
		}
	case 52:
		//line cool.y:255
		{
			yyVAL.exprs = []*Expr{yyS[yypt-0].expr}
		}
	case 53:
		//line cool.y:257
		{
			yyVAL.exprs = append(yyS[yypt-2].exprs, yyS[yypt-0].expr)
		}
	case 54:
		//line cool.y:259
		{
			yyVAL.exprs = nil
		}
	case 55:
		//line cool.y:264
		{
			yyVAL.expr = &Expr{Op: Placeholder, Text: yyS[yypt-3].str, Type: yyS[yypt-1].str, Left: yyS[yypt-0].expr.Left, Base: Base{Line: yyS[yypt-4].line}}
		}
	case 56:
		//line cool.y:269
		{
			yyVAL.exprs = []*Expr{yyS[yypt-0].expr}
		}
	case 57:
		//line cool.y:271
		{
			yyVAL.exprs = append(yyS[yypt-1].exprs, yyS[yypt-0].expr)
		}
	case 58:
		//line cool.y:276
		{
			yyVAL.expr = &Expr{Op: Branch, Text: yyS[yypt-5].str, Type: yyS[yypt-3].str, Left: yyS[yypt-1].expr, Base: Base{Line: yyS[yypt-0].line}}
		}
	}
	goto yystack /* stack new state and value */
}
