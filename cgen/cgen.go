package cgen

import (
	"fmt"
	"log"
	"os"
	"sort"
	"strconv"

	"github.com/zellyn/gocool/parser"
	"github.com/zellyn/gocool/symbols"
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

type labeler int

func (l *labeler) Next() string {
	*l++
	return fmt.Sprintf("label_%d", *l)
}

type temps int

func (t *temps) Next() string {
	*t++
	return fmt.Sprintf(":temp%d", *t)
}

// Gen performs codegen for an entire program.
func Gen(prog *parser.Program, cs parser.Classes, useGc bool, testGc bool, a asm) {
	tags := genTags(cs)
	constants := progConstants(prog)
	a.Data()
	writeGCConfig(useGc, testGc, a)
	writeConstants(constants, tags, a)
	writeClassTables(cs, constants, tags, a)
	writeBuiltinTags(tags, a)
	writeBuiltinPrototypes(tags, a)
	writePrototypes(prog, tags, a)
	writeDispatchTables(prog, cs, tags, a)
	writeHeapStart(a)

	a.CommentH1("Text segment")
	a.Text()
	writeIsa(a)
	writeBuiltinInits(a)
	generateInits(prog)
	writeMethods(prog, cs, useGc, constants, tags, a)
}

// genTags generates an integer tag for each class. Children will
// always have higher tag numbers than their parents.
func genTags(cs parser.Classes) map[string]int {
	tags := map[string]int{
		"Object": 0,
		"Int":    1,
		"Bool":   2,
		"String": 3,
		"IO":     4,
	}
	next := 5

	var traverse func(cl *parser.Class)
	traverse = func(cl *parser.Class) {
		if tags[cl.Name] == 0 && cl.Name != "Object" {
			tags[cl.Name] = next
			next++
		}
		for _, child := range cl.Children {
			traverse(cs[child])
		}
	}

	traverse(cs["Object"])

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
		a.AsciiZ(s)
		a.WordAlign()
	}
}

// writeClassTables writes out the table of class names, and the table
// of parent information.
func writeClassTables(cs parser.Classes, c *constants, tags map[string]int, a asm) {
	names := make([]string, len(tags))
	for k, v := range tags {
		names[v] = k
	}
	a.CommentH2("Classname table.")
	a.Label("class_nameTab")
	for _, s := range names {
		a.WordS(c.string(s), s)
	}

	a.CommentH2("Parent table.")
	a.Label("class_parentTab")
	for _, s := range names {
		cl := cs[s]
		p := tags[cl.Parent]
		a.WordS(strconv.Itoa(p), fmt.Sprintf("%s: %s", s, cl.Parent))
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

// writeIsa writes out the "isa" function.
func writeIsa(a asm) {
	a.CommentH2("isa function: check whether $a0 isa $a1")
	a.Comment("$a0 is pointer to object, $a1 is type tag.")
	a.Comment("$a0 is left unmodified.")
	a.Comment("Result is returned in $a1: 1 if true, 0 if false.")
	a.Label("isa")
	a.Inst("beq", "$a1 $zero isa_yes")
	a.Inst("lw", "$t0 0($a0)", "obj_tag")
	a.Inst("la", "$t1 class_parentTab")
	a.Label("isa_loop")
	a.Inst("beq", "$t0 $zero isa_no")
	a.Inst("beq", "$t0 $a1 isa_yes")
	a.Inst("sll", "$t0 $t0 2", "*4")
	a.Inst("addu", "$t0 $t0 $t1")
	a.Inst("lw", "$t0, 0($t0)", "load parent tag")
	a.Inst("j", "isa_loop")

	a.Label("isa_yes")
	a.Inst("li", "$a1 1")
	a.Inst("jr", "$ra")

	a.Label("isa_no")
	a.Inst("li", "$a1 0")
	a.Inst("jr", "$ra")
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
			a.WordS(value, fmt.Sprintf("%s (%s)", e.Name, e.Type))
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
func writeMethods(prog *parser.Program, cs parser.Classes, useGc bool, c *constants, tags map[string]int, a asm) {
	l := labeler(0)
	t := temps(0)

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
			a.Inst("nop", "", fmt.Sprintf("[%s.%s]", cl.Name, m.Name))
			if cl.Name == "Main" && m.Name == "_init" {
				a.Label("Main_init", "Name expected by runtime.")
			}

			writeMethod(prog, cs, c, useGc, tags, cl, m, &l, &t, a)
		}
	}
}

// writeMethod writes out the implementation of a single method.
func writeMethod(prog *parser.Program, cs parser.Classes, c *constants, useGc bool, tags map[string]int, cl *parser.Class, m *parser.Method, l *labeler, t *temps, a asm) {
	temps := et(m.Expr)     // # of temporaries
	nargs := len(m.Formals) // # of arguments
	nnew := temps + 3       // # of new stack slots needed (args are already on the stack)
	nframe := nargs + nnew  // # total frame size

	// Function entry
	a.Inst("addiu", fmt.Sprintf("$sp $sp -%d", 4*nnew), fmt.Sprintf("%d args, %d temporaries", nargs, temps))
	a.Inst("sw", fmt.Sprintf("$fp %d($sp)", 4*nnew))
	a.Inst("sw", fmt.Sprintf("$ra %d($sp)", 4*(nnew-1)))
	a.Inst("sw", fmt.Sprintf("$s0 %d($sp)", 4*(nnew-2)))
	a.Inst("addiu", "$fp $sp 4")
	a.Inst("move", "$s0 $a0")

	// Create the starting symbol table: the base is class
	// attributes. Then we add function parameters. After that, we
	// skip the three stack spaces reserved for fp, ra, s0, and we're
	// ready for the temporaries.
	table := cl.AttrTable
	if table.NextStack != 0 {
		panic("Unexpected use of stack in attribute symbol table.")
	}
	for _, f := range m.Formals {
		table = table.Add(f.Name, f.Type, "")
	}

	// Use colons, so nothing in the program could attempt to use
	// these symbols.
	table = table.Add(":fp", "Object", "")
	table = table.Add(":ra", "Object", "")
	table = table.Add(":s0", "Object", "")

	writeExpr(cs, c, useGc, tags, cl, table, nframe, m.Expr, l, t, a)

	// Function exit
	a.Inst("lw", fmt.Sprintf("$s0 %d($sp)", 4*(nnew-2)))
	a.Inst("lw", fmt.Sprintf("$ra %d($sp)", 4*(nnew-1)))
	a.Inst("lw", fmt.Sprintf("$fp %d($sp)", 4*nnew))
	a.Inst("addiu", fmt.Sprintf("$sp $sp %d", 4*(nframe)))
	a.Inst("jr", "$ra")
}

// isa returns true if a isa subclass of b
func isa(cs parser.Classes, a, b string) bool {
	if b == "Object" {
		return true
	}
	for {
		if a == "Object" {
			return false
		}
		if a == b {
			return true
		}
		a = cs[a].Parent
	}
}

// writeExpr writes out the code for a single expression.
func writeExpr(cs parser.Classes, c *constants, useGc bool, tags map[string]int, cl *parser.Class, table symbols.Table, nframe int, e *parser.Expr, l *labeler, t *temps, a asm) {
	a.Comment(fmt.Sprintf("line %d", e.Line))
	switch e.Op {
	case parser.Block:
		for _, e2 := range e.Exprs {
			writeExpr(cs, c, useGc, tags, cl, table, nframe, e2, l, t, a)
		}
	case parser.StaticDispatch:
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
		a.Inst("la", fmt.Sprintf("$a0 %s", c.int(e.Text)))
	case parser.StringConst:
		a.Inst("la", fmt.Sprintf("$a0 %s", c.string(e.Text)), fmt.Sprintf("%q", e.Text))
	case parser.BoolConst:
		a.Inst("la", fmt.Sprintf("$a0 %s", c.bool(e.Text)))
	case parser.Plus, parser.Sub, parser.Mul, parser.Divide:
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
		writeTypCase(cs, c, useGc, tags, cl, table, nframe, e, l, t, a)
	case parser.Let:
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
		writeExpr(cs, c, useGc, tags, cl, table, nframe, e.Left, l, t, a) // Calculate left-hand side
		a.Inst("jal", "Object.copy")
		a.Inst("lw", "$t0 12($a0)")
		a.Inst("neg", "$t0 $t0")
		a.Inst("sw", "$t0 12($a0)")
	case parser.Comp:
		over := l.Next()
		writeExpr(cs, c, useGc, tags, cl, table, nframe, e.Left, l, t, a) // Calculate left-hand side
		a.Inst("la", "$t1 bool_False")
		a.Inst("lw", "$t0 12($a0)") // Load boolean value into $t0
		a.Inst("bne", fmt.Sprintf("$t0 $zero %s", over))
		a.Inst("la", "$t1 bool_True")
		a.Label(over)
		a.Inst("move", "$a0 $t1")
	case parser.Isvoid:
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

// writeTypCase writes out the assembly for a case expression.
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

	a.Inst("j", "_case_abort")

	a.Label(over)
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
				Text: f.Attr.Name,
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
