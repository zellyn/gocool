package cgen

import (
	"fmt"
	"os"

	"github.com/zellyn/gocool/parser"
)

// File temporaries contains the routines that calculate how many
// temporaries an expression needs. This includes Let variables.

func max(is ...int) int {
	m := 0
	for _, i := range is {
		if i > m {
			m = i
		}
	}
	return m
}

func maxEt(exprs []*parser.Expr) int {
	m := 0
	for _, e := range exprs {
		m = max(m, et(e))
	}
	return m
}

// et returns a count of the temporaries needed by an
// expression. Let variables are included.
func et(e *parser.Expr) int {
	switch e.Op {
	case parser.IntConst, parser.StringConst, parser.BoolConst:
		return 0
	case parser.New:
		return 0
	case parser.Let:
		return max(et(e.Left), 1+et(e.Right))
	case parser.Object:
		return 0
	case parser.Neg:
		return et(e.Left)
	case parser.Block:
		return maxEt(e.Exprs)
	case parser.Dispatch, parser.StaticDispatch:
		return max(et(e.Left), maxEt(e.Exprs))
	case parser.Cond:
		return max(et(e.Left), et(e.Right), et(e.Else))
	case parser.Eq, parser.Lt, parser.Leq:
		return max(et(e.Left), 1+et(e.Right))
	case parser.Plus, parser.Sub, parser.Mul, parser.Divide:
		return max(et(e.Left), 1+et(e.Right))
	case parser.Comp:
		return et(e.Left)
	case parser.Assign:
		return et(e.Left)
	case parser.Isvoid:
		return et(e.Left)
	case parser.Loop:
		return max(et(e.Left), et(e.Right))
	case parser.TypCase:
		return max(et(e.Left), 1+maxEt(e.Exprs))
	case parser.Branch:
		return 1 + et(e.Left)
	case parser.NoExpr:
		return 0
	}
	fmt.Fprintf(os.Stderr, "et not implemented for '%s' expression: %+v\n", e.Op, *e)
	os.Exit(1)

	return 0
}
