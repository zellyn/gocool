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
	" +",
	" -",
	" *",
	" /",
	" ~",
	" @",
	" .",
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
	-1, 75,
	8, 0,
	-2, 34,
}

const yyNprod = 53
const yyPrivate = 57344

var yyTokenNames []string
var yyStates []string

const yyLast = 237

var yyAct = []int{

	79, 77, 101, 60, 24, 93, 27, 84, 15, 112,
	16, 86, 26, 44, 36, 23, 121, 115, 92, 54,
	21, 114, 32, 91, 113, 38, 30, 35, 29, 37,
	40, 42, 31, 56, 57, 43, 85, 62, 33, 64,
	65, 66, 67, 39, 14, 68, 34, 82, 53, 41,
	71, 72, 73, 74, 75, 76, 55, 47, 48, 83,
	49, 50, 51, 52, 8, 47, 48, 90, 117, 89,
	99, 49, 50, 51, 52, 13, 47, 48, 69, 18,
	123, 94, 95, 51, 52, 97, 47, 48, 63, 98,
	11, 45, 28, 105, 106, 20, 9, 5, 104, 110,
	102, 44, 36, 111, 109, 61, 70, 46, 116, 19,
	32, 102, 120, 38, 7, 35, 118, 37, 40, 42,
	31, 122, 53, 43, 4, 22, 33, 25, 17, 53,
	12, 39, 10, 6, 34, 3, 2, 41, 1, 53,
	100, 58, 78, 59, 0, 49, 50, 51, 52, 0,
	47, 48, 49, 50, 51, 52, 88, 47, 48, 53,
	0, 96, 49, 50, 51, 52, 53, 47, 48, 0,
	103, 119, 0, 53, 0, 107, 0, 108, 0, 0,
	0, 0, 49, 50, 51, 52, 53, 47, 48, 49,
	50, 51, 52, 53, 47, 48, 49, 50, 51, 52,
	53, 47, 48, 87, 0, 81, 0, 53, 0, 49,
	50, 51, 52, 0, 47, 48, 49, 50, 51, 52,
	80, 47, 48, 49, 50, 51, 52, 0, 47, 48,
	49, 50, 51, 52, 0, 47, 48,
}
var yyPact = []int{

	-1000, -1000, 117, -1000, 68, 98, 26, 67, -1000, -1000,
	51, 4, -1000, -33, -1000, 85, 66, -22, -1000, -28,
	123, -31, -38, 63, -12, 96, 62, 85, -1000, -1000,
	199, 15, 96, 96, -1000, 81, 96, 59, 96, 96,
	96, 96, -1000, -1000, -1000, 7, -1000, 49, 82, 96,
	96, 96, 96, 96, 96, 96, 192, 185, 8, -8,
	-1000, -32, 178, -1000, 21, 21, 199, 114, 96, 30,
	-18, 50, 50, 21, 21, 29, 199, -24, -39, 199,
	96, 96, -1000, 121, 96, 81, 41, 76, -1000, 131,
	74, 96, -1000, 96, 165, 151, -1000, 199, -1000, 123,
	87, -1000, -34, -16, -20, -25, 199, 96, -1000, -1000,
	-1000, -1000, 39, -1000, 96, -1000, 158, 103, -26, -1000,
	96, -1000, 40, -1000,
}
var yyPgo = []int{

	0, 0, 143, 3, 4, 142, 1, 141, 2, 140,
	138, 136, 135, 133, 132, 130, 128, 125, 79,
}
var yyR1 = []int{

	0, 10, 11, 11, 12, 13, 13, 14, 14, 15,
	15, 4, 4, 16, 16, 17, 17, 18, 1, 1,
	1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
	1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
	1, 6, 6, 5, 5, 7, 7, 2, 2, 3,
	9, 9, 8,
}
var yyR2 = []int{

	0, 1, 0, 2, 7, 0, 2, 0, 2, 10,
	5, 0, 2, 0, 2, 0, 3, 3, 3, 8,
	6, 4, 7, 5, 3, 4, 5, 2, 2, 3,
	3, 3, 3, 2, 3, 2, 3, 1, 1, 1,
	1, 0, 1, 1, 3, 0, 3, 1, 3, 4,
	1, 2, 6,
}
var yyChk = []int{

	-1000, -10, -11, -12, 7, 29, -13, 16, 38, 29,
	-14, 39, -15, 24, 40, 41, 43, -16, -18, 24,
	29, 42, -17, 43, -4, 4, 43, 44, 29, 40,
	-1, 24, 14, 30, 38, 19, 6, 21, 17, 35,
	22, 41, 23, 27, 5, 29, -18, 36, 37, 31,
	32, 33, 34, 8, 4, 41, -1, -1, -7, -2,
	-3, 24, -1, 29, -1, -1, -1, -1, 38, 29,
	24, -1, -1, -1, -1, -1, -1, -6, -5, -1,
	28, 20, 39, -1, 15, 44, 43, 25, 42, -1,
	37, 41, 42, 44, -1, -1, 40, -1, -3, 29,
	-9, -8, 24, 39, 24, -6, -1, 10, 26, -4,
	12, -8, 43, 40, 41, 42, -1, 29, -6, 13,
	9, 42, -1, 40,
}
var yyDef = []int{

	2, -2, 1, 3, 0, 5, 0, 0, 7, 6,
	0, 0, 8, 0, 4, 13, 0, 0, 15, 0,
	11, 0, 14, 0, 0, 0, 0, 0, 17, 10,
	12, 37, 0, 0, 45, 0, 0, 0, 0, 0,
	0, 0, 38, 39, 40, 0, 16, 0, 0, 0,
	0, 0, 0, 0, 0, 41, 0, 0, 0, 0,
	47, 0, 0, 27, 28, 33, 35, 0, 0, 0,
	0, 29, 30, 31, 32, -2, 18, 0, 42, 43,
	0, 0, 24, 0, 0, 0, 0, 0, 36, 0,
	0, 41, 21, 0, 0, 0, 46, 25, 48, 11,
	0, 50, 0, 0, 0, 0, 44, 0, 23, 49,
	26, 51, 0, 9, 41, 20, 0, 0, 0, 22,
	0, 19, 0, 52,
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
			yyVAL.classes = nil
		}
	case 3:
		//line cool.y:96
		{
			yyVAL.classes = append(yyS[yypt-1].classes, yyS[yypt-0].class)
			yyVAL.line = yyS[yypt-0].class.Line
		}
	case 4:
		//line cool.y:104
		{
			yyVAL.class = &Class{Name: yyS[yypt-5].str, Parent: yyS[yypt-4].str, Features: yyS[yypt-2].features, Filename: yylex.(*lexer).name, Base: Base{Line: yyS[yypt-0].line}}
		}
	case 5:
		//line cool.y:109
		{
			yyVAL.str = "Object"
		}
	case 6:
		//line cool.y:111
		{
			yyVAL.str = yyS[yypt-0].str
		}
	case 7:
		//line cool.y:116
		{
			yyVAL.features = nil
		}
	case 8:
		//line cool.y:118
		{
			yyVAL.features = append(yyS[yypt-1].features, yyS[yypt-0].feature)
			yyVAL.line = yyS[yypt-0].feature.Line
		}
	case 9:
		//line cool.y:126
		{
			yyVAL.feature = &Feature{Method: &Method{Name: yyS[yypt-9].str, Formals: yyS[yypt-7].formals, Type: yyS[yypt-4].str, Expr: yyS[yypt-2].expr, Base: Base{Line: yyS[yypt-0].line}}}
		}
	case 10:
		//line cool.y:128
		{
			yyVAL.feature = &Feature{Attr: &Attr{Name: yyS[yypt-4].str, Type: yyS[yypt-2].str, Init: yyS[yypt-1].expr.Left, Base: Base{Line: yyS[yypt-0].line}}}
		}
	case 11:
		//line cool.y:133
		{
			yyVAL.expr = &Expr{Op: Placeholder, Left: &Expr{Op: NoExpr, Base: Base{Line: yyS[yypt-0].line}}}
		}
	case 12:
		//line cool.y:135
		{
			yyVAL.expr = &Expr{Op: Placeholder, Left: yyS[yypt-0].expr, Base: Base{Line: yyS[yypt-0].expr.Line}}
		}
	case 13:
		//line cool.y:140
		{
			yyVAL.formals = nil
		}
	case 14:
		//line cool.y:142
		{
			yyVAL.formals = append([]*Formal{yyS[yypt-1].formal}, yyS[yypt-0].formals...)
			if yyS[yypt-0].formals != nil {
				yyVAL.line = yyS[yypt-0].formals[len(yyS[yypt-0].formals)-1].Line
			} else {
				yyVAL.line = yyS[yypt-1].line
			}
		}
	case 15:
		//line cool.y:154
		{
			yyVAL.formals = nil
		}
	case 16:
		//line cool.y:156
		{
			yyVAL.formals = append(yyS[yypt-2].formals, yyS[yypt-0].formal)
			yyVAL.line = yyS[yypt-0].formal.Line
		}
	case 17:
		//line cool.y:164
		{
			yyVAL.formal = &Formal{Name: yyS[yypt-2].str, Type: yyS[yypt-0].str, Base: Base{Line: yyS[yypt-0].line}}
		}
	case 18:
		//line cool.y:169
		{
			yyVAL.expr = &Expr{Op: Assign, Text: yyS[yypt-2].str, Left: yyS[yypt-0].expr, Base: Base{Line: yyS[yypt-0].line}}
		}
	case 19:
		//line cool.y:171
		{
			yyVAL.expr = &Expr{Op: StaticDispatch, Left: yyS[yypt-7].expr, Type: yyS[yypt-5].str, Text: yyS[yypt-3].str, Exprs: yyS[yypt-1].exprs, Base: Base{Line: yyS[yypt-0].line}}
		}
	case 20:
		//line cool.y:173
		{
			yyVAL.expr = &Expr{Op: Dispatch, Left: yyS[yypt-5].expr, Text: yyS[yypt-3].str, Exprs: yyS[yypt-1].exprs, Base: Base{Line: yyS[yypt-0].line}}
		}
	case 21:
		//line cool.y:175
		{
			yyVAL.expr = &Expr{Op: Dispatch, Left: &Expr{Op: Object, Text: "self"}, Text: yyS[yypt-3].str, Exprs: yyS[yypt-1].exprs, Base: Base{Line: yyS[yypt-0].line}}
		}
	case 22:
		//line cool.y:177
		{
			yyVAL.expr = &Expr{Op: If, Left: yyS[yypt-5].expr, Right: yyS[yypt-3].expr, Else: yyS[yypt-1].expr, Base: Base{Line: yyS[yypt-0].line}}
		}
	case 23:
		//line cool.y:179
		{
			yyVAL.expr = &Expr{Op: Loop, Left: yyS[yypt-3].expr, Right: yyS[yypt-1].expr, Base: Base{Line: yyS[yypt-0].line}}
		}
	case 24:
		//line cool.y:181
		{
			yyVAL.expr = &Expr{Op: Block, Exprs: yyS[yypt-1].exprs, Base: Base{Line: yyS[yypt-0].line}}
		}
	case 25:
		//line cool.y:183
		{
			yyVAL.expr = MakeLet(yyS[yypt-2].exprs, yyS[yypt-0].expr)
		}
	case 26:
		//line cool.y:185
		{
			yyVAL.expr = &Expr{Op: TypCase, Left: yyS[yypt-3].expr, Exprs: yyS[yypt-1].exprs, Base: Base{Line: yyS[yypt-0].line}}
		}
	case 27:
		//line cool.y:187
		{
			yyVAL.expr = &Expr{Op: New, Text: yyS[yypt-0].str, Base: Base{Line: yyS[yypt-0].line}}
		}
	case 28:
		//line cool.y:189
		{
			yyVAL.expr = &Expr{Op: Isvoid, Left: yyS[yypt-0].expr, Base: Base{Line: yyS[yypt-0].expr.Line}}
		}
	case 29:
		//line cool.y:191
		{
			yyVAL.expr = &Expr{Op: Plus, Left: yyS[yypt-2].expr, Right: yyS[yypt-0].expr, Base: Base{Line: yyS[yypt-0].expr.Line}}
		}
	case 30:
		//line cool.y:193
		{
			yyVAL.expr = &Expr{Op: Sub, Left: yyS[yypt-2].expr, Right: yyS[yypt-0].expr, Base: Base{Line: yyS[yypt-0].expr.Line}}
		}
	case 31:
		//line cool.y:195
		{
			yyVAL.expr = &Expr{Op: Mul, Left: yyS[yypt-2].expr, Right: yyS[yypt-0].expr, Base: Base{Line: yyS[yypt-0].expr.Line}}
		}
	case 32:
		//line cool.y:197
		{
			yyVAL.expr = &Expr{Op: Divide, Left: yyS[yypt-2].expr, Right: yyS[yypt-0].expr, Base: Base{Line: yyS[yypt-0].expr.Line}}
		}
	case 33:
		//line cool.y:199
		{
			yyVAL.expr = &Expr{Op: Neg, Left: yyS[yypt-0].expr, Base: Base{Line: yyS[yypt-0].expr.Line}}
		}
	case 34:
		//line cool.y:201
		{
			yyVAL.expr = &Expr{Op: OpForCmp(yyS[yypt-1].str), Left: yyS[yypt-2].expr, Right: yyS[yypt-0].expr, Base: Base{Line: yyS[yypt-0].expr.Line}}
		}
	case 35:
		//line cool.y:203
		{
			yyVAL.expr = &Expr{Op: Comp, Left: yyS[yypt-0].expr, Base: Base{Line: yyS[yypt-0].expr.Line}}
		}
	case 36:
		//line cool.y:205
		{
			yyVAL.expr = yyS[yypt-1].expr
		}
	case 37:
		//line cool.y:207
		{
			yyVAL.expr = &Expr{Op: Object, Text: yyS[yypt-0].str, Base: Base{Line: yyS[yypt-0].line}}
		}
	case 38:
		//line cool.y:209
		{
			yyVAL.expr = &Expr{Op: IntConst, Text: yyS[yypt-0].str, Base: Base{Line: yyS[yypt-0].line}}
		}
	case 39:
		//line cool.y:211
		{
			yyVAL.expr = &Expr{Op: StringConst, Text: yyS[yypt-0].str, Base: Base{Line: yyS[yypt-0].line}}
		}
	case 40:
		//line cool.y:213
		{
			yyVAL.expr = &Expr{Op: BoolConst, Text: yyS[yypt-0].str, Base: Base{Line: yyS[yypt-0].line}}
		}
	case 41:
		//line cool.y:218
		{
			yyVAL.exprs = nil
		}
	case 42:
		//line cool.y:220
		{
			yyVAL.exprs = yyS[yypt-0].exprs
		}
	case 43:
		//line cool.y:225
		{
			yyVAL.exprs = []*Expr{yyS[yypt-0].expr}
		}
	case 44:
		//line cool.y:227
		{
			yyVAL.exprs = append(yyS[yypt-2].exprs, yyS[yypt-0].expr)
		}
	case 45:
		//line cool.y:232
		{
			yyVAL.exprs = nil
		}
	case 46:
		//line cool.y:234
		{
			yyVAL.exprs = append(yyS[yypt-2].exprs, yyS[yypt-1].expr)
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
			yyVAL.expr = &Expr{Op: Placeholder, Text: yyS[yypt-3].str, Type: yyS[yypt-1].str, Left: yyS[yypt-0].expr.Left, Base: Base{Line: yyS[yypt-4].line}}
		}
	case 50:
		//line cool.y:251
		{
			yyVAL.exprs = []*Expr{yyS[yypt-0].expr}
		}
	case 51:
		//line cool.y:253
		{
			yyVAL.exprs = append(yyS[yypt-1].exprs, yyS[yypt-0].expr)
		}
	case 52:
		//line cool.y:258
		{
			yyVAL.expr = &Expr{Op: Branch, Text: yyS[yypt-5].str, Type: yyS[yypt-3].str, Left: yyS[yypt-1].expr, Base: Base{Line: yyS[yypt-0].line}}
		}
	}
	goto yystack /* stack new state and value */
}
