package cgen

import (
	"fmt"
	"log"
	"os"
	"sort"

	"github.com/zellyn/gocool/parser"
	"github.com/zellyn/gocool/symbols"
)

// File expr contains the code to actually write assembler
// instructions for expressions. Most of it is a huge switch
// statement.

// writeExpr writes out the code for a single expression.
func writeExpr(cs parser.Classes, c *constants, useGc bool, tags map[string]int, cl *parser.Class, table symbols.Table, nframe int, e *parser.Expr, l *labeler, t *temps, a asm) {
	a.Comment(fmt.Sprintf("line %d", e.Line))
	switch e.Op {
	case parser.Block:
		// Just write them one after the other. The last will remain
		// in $a0, so the block will take the correct value.

		for _, e2 := range e.Exprs {
			writeExpr(cs, c, useGc, tags, cl, table, nframe, e2, l, t, a)
		}
	case parser.StaticDispatch:
		// Push the arguments one by one, calculate the target, call
		// the method.

		for _, e2 := range e.Exprs {
			writeExpr(cs, c, useGc, tags, cl, table, nframe, e2, l, t, a) // Calculate argument value
			a.Inst("sw", "$a0 0($sp)")                                    // Push it
			a.Inst("addiu", "$sp $sp -4")                                 // Decrement $sp
		}
		writeExpr(cs, c, useGc, tags, cl, table, nframe, e.Left, l, t, a) // Calculate object target
		entry, ok := cs[e.InternalType].MethodTable.Get(e.Text)
		if !ok {
			log.Panicf("Cannot find %s.%s.", e.InternalType, e.Text)
		}
		if entry.Class == "" {
			log.Panicf("MethodTable entry for %s.%s has no class.", e.InternalType, e.Text)
		}
		a.Inst("jal", fmt.Sprintf("%s.%s", entry.Class, e.Text))
	case parser.Dispatch:
		// Push the arguments one by one, calculate the target, check
		// for void, call the function.

		for _, e2 := range e.Exprs {
			writeExpr(cs, c, useGc, tags, cl, table, nframe, e2, l, t, a) // Calculate argument value
			a.Inst("sw", "$a0 0($sp)")                                    // Push it
			a.Inst("addiu", "$sp $sp -4")                                 // Decrement $sp
		}
		writeExpr(cs, c, useGc, tags, cl, table, nframe, e.Left, l, t, a) // Calculate object target

		// Check for void.
		overVoid := l.Next()
		a.Inst("bne", fmt.Sprintf("$a0 $zero %s", overVoid))
		a.Inst("la", fmt.Sprintf("$a0 %s", c.string(cl.Filename)), cl.Filename)
		a.Inst("li", fmt.Sprintf("$t1 %d", e.Line))
		a.Inst("j", "_dispatch_abort")
		a.Label(overVoid)

		typ := e.Left.Type
		if typ == "SELF_TYPE" {
			typ = cl.Name
		}
		entry, ok := cs[typ].MethodTable.Get(e.Text)
		if !ok {
			log.Panicf("Cannot find %s.%s.", typ, e.Text)
		}
		if entry.Class == "" {
			log.Panicf("MethodTable entry for %s.%s has no class.", typ, e.Text)
		}
		a.Inst("lw", "$t0 8($a0)")                                  // load dispatch table
		a.Inst("lw", fmt.Sprintf("$t0 %d($t0)", 4*(1+entry.Index))) // load method address
		a.Inst("jalr", "$t0")
	case parser.Object:
		// Self is easy: we saved it in $s0. Otherwise look up the
		// name in the symbol table, and grab it from either the
		// stack, or the current object.

		if e.Text == "self" {
			a.Inst("move", "$a0 $s0", "self")
			break
		}
		entry, ok := table.Get(e.Text)
		if !ok {
			log.Panicf("Unable to find object reference %q. Symbol table: %+v", e.Text, table)
		}
		if entry.Class == "" {
			a.Inst("lw", fmt.Sprintf("$a0 %d($fp)", 4*(nframe-1-entry.Index)), e.Text)
		} else {
			// Object attribute is just an offset from self.
			a.Inst("lw", fmt.Sprintf("$a0 %d($s0)", 4*(3+entry.Index)), e.Text)
		}
	case parser.Cond:
		// Calculate the predicate, then branch to calculate either
		// the left or right branch.

		writeExpr(cs, c, useGc, tags, cl, table, nframe, e.Left, l, t, a) // Calculate predicate
		lFalse := l.Next()
		lEnd := l.Next()
		a.Inst("lw", "$t0 12($a0)") // Load boolean value into $t0
		a.Inst("beq", fmt.Sprintf("$t0 $zero %s", lFalse))
		writeExpr(cs, c, useGc, tags, cl, table, nframe, e.Right, l, t, a) // True branch
		a.Inst("j", lEnd)
		a.Label(lFalse)
		writeExpr(cs, c, useGc, tags, cl, table, nframe, e.Else, l, t, a) // False branch
		a.Label(lEnd)
	case parser.Eq:
		//  Calculate left side, store in a temporary, calculate right
		//  side. If pointers are equal, we're done. Otherwise, call
		//  the equality_test helper in the provided support code.

		writeExpr(cs, c, useGc, tags, cl, table, nframe, e.Left, l, t, a) // Calculate left-hand side
		temp := t.Next()
		table := table.Add(temp, e.Type, "")
		index := table.Entries[len(table.Entries)-1].Index
		frameOffset := 4 * (nframe - 1 - index)
		a.Inst("sw", fmt.Sprintf("$a0 %d($fp)", frameOffset), temp)
		writeExpr(cs, c, useGc, tags, cl, table, nframe, e.Right, l, t, a) // Calculate right-hand side
		a.Inst("move", "$t1 $a0")
		a.Inst("lw", fmt.Sprintf("$t2 %d($fp)", frameOffset), temp)
		a.Inst("la", "$a0 bool_True")
		// If the pointers are equal, it's easy.
		easyEqual := l.Next()
		a.Inst("beq", fmt.Sprintf("$t1 $t2 %s", easyEqual))
		a.Inst("la", "$a1 bool_False")
		a.Inst("jal", "equality_test")
		a.Label(easyEqual)
	case parser.IntConst:
		// Integer constant: already in the data section, so just reference it.
		a.Inst("la", fmt.Sprintf("$a0 %s", c.int(e.Text)))
	case parser.StringConst:
		// String constant: already in the data section, so just reference it.
		a.Inst("la", fmt.Sprintf("$a0 %s", c.string(e.Text)), fmt.Sprintf("%q", e.Text))
	case parser.BoolConst:
		// Boolean constant: already in the data section, so just reference it.
		a.Inst("la", fmt.Sprintf("$a0 %s", c.bool(e.Text)))
	case parser.Plus, parser.Sub, parser.Mul, parser.Divide:
		// Integer ops: calculate the left, copy it (so we can mutate
		// it), save it in a temporary. Then calculate the right, and
		// do the math.

		writeExpr(cs, c, useGc, tags, cl, table, nframe, e.Left, l, t, a) // Calculate left-hand side

		temp := t.Next()
		table := table.Add(temp, e.Type, "")
		index := table.Entries[len(table.Entries)-1].Index
		frameOffset := 4 * (nframe - 1 - index)

		a.Inst("jal", "Object.copy")
		a.Inst("sw", fmt.Sprintf("$a0 %d($fp)", frameOffset), temp)
		writeExpr(cs, c, useGc, tags, cl, table, nframe, e.Right, l, t, a) // Calculate right-hand side
		a.Inst("lw", "$t1 12($a0)")
		a.Inst("lw", fmt.Sprintf("$a0 %d($fp)", frameOffset), temp)
		a.Inst("lw", "$t0 12($a0)")
		switch e.Op {
		case parser.Plus:
			a.Inst("add", "$t0 $t0 $t1")
		case parser.Sub:
			a.Inst("sub", "$t0 $t0 $t1")
		case parser.Mul:
			a.Inst("mul", "$t0 $t0 $t1")
		case parser.Divide:
			a.Inst("div", "$t0 $t0 $t1")
		default:
			log.Panicf("Unknown Op: %v", e.Op)
		}
		a.Inst("sw", "$t0 12($a0)")
	case parser.TypCase:
		// This one's more complicated: call a separate function.
		writeTypCase(cs, c, useGc, tags, cl, table, nframe, e, l, t, a)
	case parser.Let:
		// For lets, we use a "temporary" stack slot too, but give it
		// a name in the symbol table. The only wrinkle is whether we
		// have an initializer or not, and if not, what the default
		// value is. After setting that all up, calculate the let
		// body.

		typ := e.InternalType
		if typ == "SELF_TYPE" {
			typ = cl.Name
		}
		tmpTable := table.Add(e.Text, typ, "")
		index := tmpTable.Entries[len(tmpTable.Entries)-1].Index
		frameOffset := 4 * (nframe - 1 - index)

		if e.Left.Op == parser.NoExpr {
			switch typ {
			case "Int":
				a.Inst("la", "$t0 Int_protObj")
			case "Bool":
				a.Inst("la", "$t0 Bool_protObj")
			case "String":
				a.Inst("la", "$t0 String_protObj")
			default:
				a.Inst("li", "$t0 0")
			}
			a.Inst("sw", fmt.Sprintf("$t0 %d($fp)", frameOffset), "default value for "+e.Text)
		} else {
			writeExpr(cs, c, useGc, tags, cl, table, nframe, e.Left, l, t, a) // calculate intial value
			a.Inst("sw", fmt.Sprintf("$a0 %d($fp)", frameOffset), "calculated value for "+e.Text)
		}
		writeExpr(cs, c, useGc, tags, cl, tmpTable, nframe, e.Right, l, t, a) // calculate let body

	case parser.Loop:
		// Just evaluate the condition each time around, and skip out
		// if it's false.

		top := l.Next()
		over := l.Next()
		a.Label(top)
		writeExpr(cs, c, useGc, tags, cl, table, nframe, e.Left, l, t, a)
		a.Inst("lw", "$t0 12($a0)") // Load boolean value into $t0
		a.Inst("beq", fmt.Sprintf("$t0 $zero %s", over))
		writeExpr(cs, c, useGc, tags, cl, table, nframe, e.Right, l, t, a)
		a.Inst("j", top)
		a.Label(over)
		a.Inst("move", "$a0 $zero") // Make sure loop value is void.
	case parser.Assign:
		// For assigns, figure out whether it's an attribute or a
		// stack variable.

		writeExpr(cs, c, useGc, tags, cl, table, nframe, e.Left, l, t, a)
		entry, ok := table.Get(e.Text)
		if !ok {
			log.Panicf("Unable to find variable named %q to assign to", e.Text)
		}
		if entry.Class == "" {
			a.Inst("sw", fmt.Sprintf("$a0 %d($fp)", 4*(nframe-1-entry.Index)), e.Text)
		} else {
			// Object attribute is just an offset from self.
			a.Inst("sw", fmt.Sprintf("$a0 %d($s0)", 4*(3+entry.Index)), e.Text)
			if useGc {
				a.Inst("addiu", fmt.Sprintf("$a1 $s0 %d", 4*(3+entry.Index)))
				a.Inst("jal", "_GenGC_Assign")
			}
		}
	case parser.Lt, parser.Leq:
		// Comparisons are almost like addition, except we don't need
		// to copy and mutate. And we need to load the "true" or
		// "false" objects at the end.

		writeExpr(cs, c, useGc, tags, cl, table, nframe, e.Left, l, t, a) // Calculate left-hand side

		temp := t.Next()
		table := table.Add(temp, e.Type, "")
		index := table.Entries[len(table.Entries)-1].Index
		frameOffset := 4 * (nframe - 1 - index)

		a.Inst("sw", fmt.Sprintf("$a0 %d($fp)", frameOffset), temp)
		writeExpr(cs, c, useGc, tags, cl, table, nframe, e.Right, l, t, a) // Calculate right-hand side
		a.Inst("lw", "$t1 12($a0)")
		a.Inst("lw", fmt.Sprintf("$a0 %d($fp)", frameOffset), temp)
		a.Inst("lw", "$t0 12($a0)")
		a.Inst("la", "$a0 bool_True")
		yep := l.Next()
		switch e.Op {
		case parser.Lt:
			a.Inst("slt", "$t0 $t0 $t1")
		case parser.Leq:
			a.Inst("sle", "$t0 $t0 $t1")
		default:
			panic("unexpected op")
		}
		a.Inst("bne", fmt.Sprintf("$t0 $zero %s", yep))
		a.Inst("la", "$a0 bool_False")
		a.Label(yep)
	case parser.New:
		// New is one of the more complex expressions, because we have
		// to (a) look up the prototype object from self if we don't
		// have the name because the type is SELF_TYPE, and (b) call
		// the init function.
		// TODO(zellyn): include a void check here for the SELF_TYPE branch.

		// Create the new object
		if e.InternalType != "SELF_TYPE" {
			a.Inst("la", fmt.Sprintf("$a0 %s_protObj", e.InternalType))
		} else {
			// SELF_TYPE: use prototype-object pointer at start of self's dispatch table.
			a.Inst("lw", "$a0 8($s0)") // dispatch table
			a.Inst("lw", "$a0 0($a0)") // dispatch table
		}
		a.Inst("jal", "Object.copy")

		// Call init function.
		entry, ok := cs["Object"].MethodTable.Get("_init")
		if !ok {
			log.Panicf("Cannot find Object._init.")
		}
		if entry.Class == "" {
			log.Panicf("MethodTable entry for Object._init has no class.")
		}
		a.Inst("lw", "$t0 8($a0)")                                  // load dispatch table
		a.Inst("lw", fmt.Sprintf("$t0 %d($t0)", 4*(1+entry.Index))) // load method address
		a.Inst("jalr", "$t0")
	case parser.Neg:
		// Negate: SPIM has an instruction for this, so it's easy.
		writeExpr(cs, c, useGc, tags, cl, table, nframe, e.Left, l, t, a) // Calculate left-hand side
		a.Inst("jal", "Object.copy")
		a.Inst("lw", "$t0 12($a0)")
		a.Inst("neg", "$t0 $t0")
		a.Inst("sw", "$t0 12($a0)")
	case parser.Comp:
		// Boolean complement: just load the other boolean.
		over := l.Next()
		writeExpr(cs, c, useGc, tags, cl, table, nframe, e.Left, l, t, a) // Calculate left-hand side
		a.Inst("la", "$t1 bool_False")
		a.Inst("lw", "$t0 12($a0)") // Load boolean value into $t0
		a.Inst("bne", fmt.Sprintf("$t0 $zero %s", over))
		a.Inst("la", "$t1 bool_True")
		a.Label(over)
		a.Inst("move", "$a0 $t1")
	case parser.Isvoid:
		// Isvoid is what you'd expect.
		isVoid := l.Next()
		writeExpr(cs, c, useGc, tags, cl, table, nframe, e.Left, l, t, a) // Calculate left-hand side
		a.Inst("la", "$t0 bool_True")
		a.Inst("beq", fmt.Sprintf("$a0 $zero %s", isVoid))
		a.Inst("la", "$t0 bool_False")
		a.Label(isVoid)
		a.Inst("move", "$a0 $t0")
	default:
		fmt.Fprintf(os.Stderr, "writeExpr not implemented for '%s' expression: %+v\n", e.Op, *e)
		os.Exit(1)
	}
}

// writeTypCase writes out the assembly for a case expression. It uses
// the assembly "isa" helper function defined by writeIsa() to make
// things simpler.
func writeTypCase(cs parser.Classes, c *constants, useGc bool, tags map[string]int, cl *parser.Class, table symbols.Table, nframe int, e *parser.Expr, l *labeler, t *temps, a asm) {

	// We need case tags most-specific first, so sort by descending tag.
	byTag := make(map[int]*parser.Expr, len(e.Exprs))
	caseTags := make([]int, 0, len(e.Exprs))
	for _, e2 := range e.Exprs {
		tag := tags[e2.Type]
		caseTags = append(caseTags, tag)
		byTag[tag] = e2
	}
	sort.Sort(sort.Reverse(sort.IntSlice(caseTags)))

	// Calculate the expression to be cased on.
	writeExpr(cs, c, useGc, tags, cl, table, nframe, e.Left, l, t, a) // Calculate expression to case on.

	// Find the next slot, and store $a0 there. Use a temporary table,
	// because the slot might be named differently in each branch.
	tmpTable := table.Add("unused", "Object", "")
	index := tmpTable.Entries[len(tmpTable.Entries)-1].Index
	frameOffset := 4 * (nframe - 1 - index)
	a.Inst("sw", fmt.Sprintf("$a0 %d($fp)", frameOffset), "cased-on value")

	// Check for case on void.
	overVoid := l.Next()
	a.Inst("bne", fmt.Sprintf("$a0 $zero %s", overVoid))
	a.Inst("la", fmt.Sprintf("$a0 %s", c.string(cl.Filename)), cl.Filename)
	a.Inst("li", fmt.Sprintf("$t1 %d", e.Line))
	a.Inst("j", "_case_abort2")
	a.Label(overVoid)

	over := l.Next()

	for _, tag := range caseTags {
		e2 := byTag[tag]
		skip := l.Next()
		a.Comment(fmt.Sprintf("%s:%s", e2.Text, e2.Type))
		a.Inst("li", fmt.Sprintf("$a1 %d", tag))
		a.Inst("jal", "isa")
		a.Inst("beq", fmt.Sprintf("$a1 $zero %s", skip))
		writeExpr(cs, c, useGc, tags, cl, table.Add(e2.Text, e2.Type, ""), nframe, e2.Left, l, t, a)
		a.Inst("j", over)
		a.Label(skip)
	}

	// If we got here, we had no matching cases: error.
	a.Inst("j", "_case_abort")

	a.Label(over)
}
