package cgen

import (
	"fmt"
	"os"
	"sort"

	"github.com/zellyn/gocool/parser"
)

var builtins = []string{
	"Object",
	"Int",
	"Bool",
	"String",
	"IO",
}

var builtinsMap map[string]bool

func init() {
	builtinsMap = make(map[string]bool, len(builtins))
	for _, s := range builtins {
		builtinsMap[s] = true
	}
}

// Gen performs codegen for an entire program.
func Gen(prog *parser.Program, cs parser.Classes, useGc bool, testGc bool, a asm) {
	tags := genTags(prog)
	constants := progConstants(prog)
	a.Data()
	writeGCConfig(useGc, testGc, a)
	writeConstants(constants, tags, a)
	writeClassnameTable(constants, tags, a)
	writeBuiltinTags(tags, a)
	writeBuiltinPrototypes(tags, a)
	writePrototypes(prog, tags, a)
	writeDispatchTables(prog, cs, tags, a)
	writeHeapStart(a)

	a.Text()
	writeBuiltinInits(a)
	generateInits(prog)
	writeMethods(prog, cs, tags, a)
}

// genTags generates an integer tag for each class.
func genTags(prog *parser.Program) map[string]int {
	tags := map[string]int{
		"Object": 0,
		"Int":    1,
		"Bool":   2,
		"String": 3,
		"IO":     4,
	}
	next := 5
	for _, cl := range prog.Classes {
		if _, ok := tags[cl.Name]; ok {
			continue
		}
		tags[cl.Name] = next
		next++
	}
	return tags
}

// writeGCConfig writes out the Garbage Collection configuration
func writeGCConfig(useGc bool, test bool, a asm) {
	a.CommentH1("GC Config")
	a.Global("_MemMgr_INITIALIZER")
	a.Label("_MemMgr_INITIALIZER")
	if useGc {
		a.WordS("_GenGC_Init")
	} else {
		a.WordS("_NoGC_Init")
	}
	a.Global("_MemMgr_COLLECTOR")
	a.Label("_MemMgr_COLLECTOR")
	if useGc {
		a.WordS("_GenGC_Collect")
	} else {
		a.WordS("_NoGC_Collect")
	}
	a.Global("_MemMgr_TEST")
	a.Label("_MemMgr_TEST")
	if test {
		a.Word(1)
	} else {
		a.Word(0)
	}
}

// writeConstants writes out the constant boolean, string, and integer constants.
func writeConstants(c *constants, tags map[string]int, a asm) {
	// Ensure the empty string is in there (and hence the integer 0 too).
	c.string("")

	a.CommentH1("Constants")
	a.CommentH2("Booleans")
	// Boolean False.
	a.ObjTag()
	a.Label("bool_False")
	a.Label("Bool_protObj", "This also functions as the prototype Bool.")
	a.Word(tags["Bool"])
	a.Word(4) // Bools are 4 words long.
	a.WordS("Bool_dispTab")
	a.Word(0)

	// Boolean True.
	a.ObjTag()
	a.Label("bool_True")
	a.Word(tags["Bool"])
	a.Word(4) // Bools are 4 words long.
	a.WordS("Bool_dispTab")
	a.Word(1)

	// Write out integers in int-sort order.
	a.CommentH2("Ints")
	var ints []int
	for i := range c.ints {
		ints = append(ints, i)
	}
	sort.Ints(ints)

	for _, i := range ints {
		a.ObjTag()
		a.Label(c.formatInt(i))
		if i == 0 {
			a.Label("Int_protObj", "This also functions as the prototype Int.")
		}
		a.Word(tags["Int"])
		a.Word(4) // Ints are 4 words long.
		a.WordS("Int_dispTab")
		a.Word(i)
	}

	// Write out string constants in string-sort order.
	a.CommentH2("Strings")
	var ss []string
	for s := range c.strings {
		ss = append(ss, s)
	}
	sort.Strings(ss)

	for _, s := range ss {
		bytelen := len(s) + 1
		bytelen += (4 - (bytelen % 4)) % 4 // padding
		wordlen := 4 + bytelen/4
		a.ObjTag()
		a.Label(c.string(s))
		if s == "" {
			a.Label("String_protObj", "This also functions as the prototype String.")
		}
		a.Word(tags["String"])
		a.Word(wordlen) // Strings are 4 words long, plus nul-terminated, padded string.
		a.WordS("String_dispTab")
		a.WordS(c.formatInt(len(s))) // length of the string
		a.Ascii(s)
		a.Word(0)
		a.WordAlign()
	}
}

// writeClassnameTable writes out the table of class names.
func writeClassnameTable(c *constants, tags map[string]int, a asm) {
	names := make([]string, len(tags))
	for k, v := range tags {
		names[v] = k
	}
	a.CommentH2("Classname table.")
	a.Label("class_nameTab")
	for _, s := range names {
		a.WordS(c.string(s), s)
	}
}

// writeHeapStart writes the heap_start label and word. It's not
// mentioned in the docs, but it's in the grading output, and the
// runtime expects to find it.
func writeHeapStart(a asm) {
	a.Global("heap_start")
	a.Label("heap_start")
	a.Word(0)
}

// writeBuiltinInits writes out the init functions for builtin classes.
func writeBuiltinInits(a asm) {
	a.CommentH2("Init functions for builtin types.")
	a.Comment("Labels needed by runtime.")
	a.Label("Int_init")
	a.Label("String_init")
	a.Comment("Labels needed by generated code.")
	a.Label("Object._init")
	a.Label("Int._init")
	a.Label("Bool._init")
	a.Label("String._init")
	a.Label("IO._init")
	a.Inst("jr", "$ra", "Do nothing.")
}

// writeBuiltinTags writes out the tag information needed by the runtime system.
func writeBuiltinTags(tags map[string]int, a asm) {
	a.CommentH2("Tags for builtin types.")
	a.Label("_int_tag")
	a.Word(tags["Int"])
	a.Label("_bool_tag")
	a.Word(tags["Bool"])
	a.Label("_string_tag")
	a.Word(tags["String"])
}

// writeBuiltinPrototypes writes out the prototypes for builtin objects.
func writeBuiltinPrototypes(tags map[string]int, a asm) {
	a.CommentH1("Builtin Prototypes")

	a.Comment("Bool prototype written as Bool False constant.")
	a.Comment("Int prototype written as Int 0 constant.")
	a.Comment("String prototype written as empty String constant.")

	a.CommentH2("Object")
	a.ObjTag()
	a.Label("Object_protObj")
	a.Word(tags["Object"])
	a.Word(3) // Objects are 3 words long.
	a.WordS("Object_dispTab")

	a.CommentH2("IO")
	a.ObjTag()
	a.Label("IO_protObj")
	a.Word(tags["IO"])
	a.Word(3) // IO objects are 3 words long.
	a.WordS("IO_dispTab")
}

// writePrototypes writes the prototype objects for user-defined types.
func writePrototypes(prog *parser.Program, tags map[string]int, a asm) {
	a.CommentH1("Prototypes (non-Builtins)")

	for _, cl := range prog.Classes {
		a.CommentH2(cl.Name)
		a.ObjTag()
		a.Label(fmt.Sprintf("%s_protObj", cl.Name))
		a.Word(tags[cl.Name])
		symbols := cl.AttrTable
		a.Word(3+len(symbols.Entries), fmt.Sprintf("size: 3 + (%d attributes)", len(symbols.Entries)))
		a.WordS(fmt.Sprintf("%s_dispTab", cl.Name))
		for _, e := range symbols.Entries {
			value := "0"
			switch e.Type {
			case "Int":
				value = "Int_protObj"
			case "Bool":
				value = "Bool_protObj"
			case "String":
				value = "String_protObj"
			}
			a.WordS(value, e.Type)
		}
	}
}

// writeDispatchTables writes the dispatch tables for all objects.
func writeDispatchTables(prog *parser.Program, cs parser.Classes, tags map[string]int, a asm) {
	a.CommentH1("Dispatch tables")

	// Do a bit of a dance to output classes a tidy order: builtins
	// first, then by definition.
	classNames := builtins
	for _, cl := range prog.Classes {
		classNames = append(classNames, cl.Name)
	}

	for _, name := range classNames {
		cl := cs[name]
		a.CommentH2(name)
		a.Label(fmt.Sprintf("%s_dispTab", name))
		a.WordS(fmt.Sprintf("%s_protObj", name))
		symbols := cl.MethodTable
		for _, e := range symbols.Entries {
			a.WordS(fmt.Sprintf("%s.%s", e.Class, e.Name))
		}
	}
}

// writeMethods writes the method definitions out.
func writeMethods(prog *parser.Program, cs parser.Classes, tags map[string]int, a asm) {
	a.CommentH1("Method implementations")

	for _, cl := range prog.Classes {
		a.CommentH2(cl.Name)

		for _, f := range cl.Features {
			if f.Attr != nil {
				continue
			}
			m := f.Method
			a.CommentH3(fmt.Sprintf("%s.%s", cl.Name, m.Name))
			a.Label(fmt.Sprintf("%s.%s", cl.Name, m.Name))
			if cl.Name == "Main" && m.Name == "_init" {
				a.Label("Main_init", "Name expected by runtime.")
			}

			writeMethod(prog, cs, tags, m, a)
		}
	}
}

// writeMethod writes out the implementation of a single method.
func writeMethod(prog *parser.Program, cs parser.Classes, tags map[string]int, m *parser.Method, a asm) {
	temps := et(m.Expr)     // # of temporaries
	nargs := len(m.Formals) // # of arguments
	nnew := temps + 3       // # of new stack slots needed (args are already on the stack)
	nframe := nargs + nnew  // # total frame size

	// Function entry
	a.Inst("addiu", fmt.Sprintf("$sp $sp -%d", 4*nnew))
	a.Inst("sw", fmt.Sprintf("$fp %d($sp)", 4*nnew))
	a.Inst("sw", fmt.Sprintf("$ra %d($sp)", 4*(nnew-1)))
	a.Inst("sw", fmt.Sprintf("$s0 %d($sp)", 4*(nnew-2)))
	a.Inst("addiu", "$fp $sp 4")
	a.Inst("move", "$s0 $a0")

	// Function exit
	a.Inst("lw", fmt.Sprintf("$s0 %d($sp)", 4*(nnew-2)))
	a.Inst("lw", fmt.Sprintf("$ra %d($sp)", 4*(nnew-1)))
	a.Inst("lw", fmt.Sprintf("$fp %d($sp)", 4*nnew))
	a.Inst("addiu", fmt.Sprintf("$sp $sp %d", 4*(nframe)))
	a.Inst("jr", "$ra")
}

// generateInits generates the init expressions for user-defined classes.
func generateInits(prog *parser.Program) {
	for _, cl := range prog.Classes {
		block := &parser.Expr{
			Op: parser.Block,
		}
		// Start with a call to the parent _init function.
		block.Exprs = append(block.Exprs, &parser.Expr{
			Op: parser.StaticDispatch,
			Left: &parser.Expr{
				Op:   parser.Object,
				Text: "self",
				Type: "SELF_TYPE",
			},
			InternalType: cl.Parent,
			Text:         "_init",
		})

		for _, f := range cl.Features {
			if f.Method != nil {
				continue
			}
			if f.Attr.Init.Op == parser.NoExpr {
				continue
			}
			block.Exprs = append(block.Exprs, &parser.Expr{
				Op:   parser.Assign,
				Text: f.Attr.Init.Text,
				Left: f.Attr.Init,
			})
		}

		// Return a reference to self, so calling the parent init leaves $a0 unchanged.
		block.Exprs = append(block.Exprs, &parser.Expr{
			Op:   parser.Object,
			Text: "self",
			Type: "SELF_TYPE",
		})

		method := &parser.Method{
			Name: "_init",
			Type: "SELF_TYPE",
			Expr: block,
		}

		if cl.Methods == nil {
			cl.Methods = make(map[string]*parser.Method)
		}
		cl.Methods["_init"] = method

		cl.Features = append([]*parser.Feature{{Method: method}}, cl.Features...)
	}
}

// genExpr generates the code for a single expression
func genExpr(e *parser.Expr, a asm) {
	switch e.Op {
	default:
		fmt.Fprintf(os.Stderr, "Codegen not implemented for '%s' expression: %+v\n", e.Op, *e)
		os.Exit(1)
	}
}

// func progConstants collects an array of integer and an array of
// string constants mentioned (recursively) in the given program.
func progConstants(prog *parser.Program) *constants {
	c := &constants{}
	c.string("")
	for _, s := range builtins {
		c.string(s)
	}

	for _, cl := range prog.Classes {
		c.string(cl.Name)
		c.string(cl.Filename)
		// Iterate over features so we get them in order
		for _, f := range cl.Features {
			var e *parser.Expr
			if f.Method != nil {
				e = f.Method.Expr
			} else {
				e = f.Attr.Init
			}
			exprConstants(e, c)
		}
	}
	return c
}

// exprConstants collects an array of integer and an array of
// string constants mentioned (recursively) in the given expression.
func exprConstants(e *parser.Expr, c *constants) {
	if e == nil {
		return
	}
	switch e.Op {
	case parser.StringConst:
		c.string(e.Text)
		return
	case parser.IntConst:
		c.int(e.Text)
		return
	}

	exprConstants(e.Left, c)
	exprConstants(e.Right, c)
	exprConstants(e.Else, c)
	for _, e2 := range e.Exprs {
		exprConstants(e2, c)
	}
}

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
		return 1 + max(et(e.Left), et(e.Right))
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
		return max(1+et(e.Left), et(e.Right))
	case parser.Plus, parser.Sub, parser.Mul, parser.Divide:
		return max(1+et(e.Left), et(e.Right))
	case parser.Comp:
		return et(e.Left)
	case parser.Assign:
		return et(e.Left)
	case parser.Isvoid:
		return et(e.Left)
	case parser.Loop:
		return max(et(e.Left), et(e.Right))
	case parser.TypCase:
		return max(et(e.Left), maxEt(e.Exprs))
	case parser.Branch:
		return 1 + et(e.Left)
	case parser.NoExpr:
		return 0
	}
	fmt.Fprintf(os.Stderr, "et not implemented for '%s' expression: %+v\n", e.Op, *e)
	os.Exit(1)

	return 0
}
