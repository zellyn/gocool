package cgen

import (
	"fmt"
	"io"
	"os"

	"github.com/zellyn/gocool/parser"
)

// Gen performs codegen for an entire program.
func Gen(prog *parser.Program, w io.Writer) {

}

// genExpr generates the code for a single expression
func genExpr(e *parser.Expr, w io.Writer) {
	switch e.Op {
	case parser.IntConst:
		fmt.Fprintf(w, "li $a0 %d\n", e.Text)
	default:
		fmt.Fprintf(os.Stderr, "Codegen not implemented for '%s' expression: %+v\n", e.Op, *e)
		os.Exit(1)
	}
}
