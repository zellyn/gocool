package cgen

// File asm and the "asm" type provide a simple wrapper for generating
// MIPS assembly. Many of the methods take an optional comment slice:
// they only use the first element. They also attempt to return
// correct write counts and errors from the underlying fmt.Fprintf
// calls, in case anyone ever checks those.

import (
	"fmt"
	"io"
	"strings"
)

type asm struct {
	io.Writer
}

// Return a New asm object.
func NewAsm(w io.Writer) asm {
	return asm{w}
}

// ObjTag writes out the -1 object tag expected by the Cool runtime code.
func (a asm) ObjTag() (int, error) {
	return a.Word(-1)
}

// Label writes out a label.
func (a asm) Label(l string, comment ...string) (int, error) {
	if len(comment) > 0 {
		return fmt.Fprintf(a, "%s: \t# %s\n", l, comment[0])
	}
	return fmt.Fprintf(a, "%s:\n", l)
}

// Word writes out a word, given an integer value.
func (a asm) Word(w int, comment ...string) (int, error) {
	if len(comment) > 0 {
		return fmt.Fprintf(a, "\t.word\t%d\t# %s\n", w, comment[0])
	}
	return fmt.Fprintf(a, "\t.word\t%d\n", w)
}

// WordS writes out a word, given a label.
func (a asm) WordS(s string, comment ...string) (int, error) {
	if len(comment) > 0 {
		return fmt.Fprintf(a, "\t.word\t%s\t# %s\n", s, comment[0])
	}
	return fmt.Fprintf(a, "\t.word\t%s\n", s)
}

// Global declares a label to be global.
func (a asm) Global(s string, comment ...string) (int, error) {
	if len(comment) > 0 {
		return fmt.Fprintf(a, "\t.globl\t%s\t# %s\n", s, comment[0])
	}
	return fmt.Fprintf(a, "\t.globl\t%s\n", s)
}

// Data starts writing to the data segment.
func (a asm) Data() (int, error) {
	return fmt.Fprintf(a, "\t.data\n")
}

// Text starts writing to the data segment.
func (a asm) Text() (int, error) {
	return fmt.Fprintf(a, "\t.text\n")
}

// AsciiZ is a wrapper that writes out string values, while dodging
// SPIM bugs in backslash escaping.
func (a asm) AsciiZ(s string) (int, error) {
	if s == "" || !strings.ContainsRune(s, '\\') {
		return fmt.Fprintf(a, "\t.asciiz\t%q\n", s)
	}
	a.Comment(fmt.Sprintf("%q", s))
	bb := "\t.byte\t"
	for _, b := range []byte(s) {
		bb = bb + fmt.Sprintf("%d,", b)
	}
	bb = bb + "0\n"

	return fmt.Fprintf(a, bb)
}

// Wordalign ensures the next write is word-aligned.
func (a asm) WordAlign() (int, error) {
	return fmt.Fprintf(a, "\t.align\t2\n")
}

// Comment writes out a single-line comment against the left margin.
func (a asm) Comment(s string) (int, error) {
	return fmt.Fprintf(a, "# %s\n", s)
}

// CommentH2 writes out a single-line comment, with a preceding blank line.
func (a asm) CommentH2(s string) (int, error) {
	return fmt.Fprintf(a, "\n# %s\n", s)
}

// CommentH1 writes out a three-line comment, with a preceding blank line.
func (a asm) CommentH1(s string) (int, error) {
	var b1, b2 int
	b1, err := fmt.Fprintf(a, "\n#\n")
	if err != nil {
		return b1, err
	}
	b2, err = fmt.Fprintf(a, "# %s\n", s)
	b1 += b2
	if err != nil {
		return b1, err
	}
	b2, err = fmt.Fprintf(a, "#\n")
	b1 += b2
	return b1, err
}

// Inst writes out an instruction. It expects an instruction, and an
// argument, both strings.
func (a asm) Inst(inst, arg string, comment ...string) (int, error) {
	if len(comment) > 0 {
		return fmt.Fprintf(a, "\t%s\t%s\t# %s\n", inst, arg, comment[0])
	}
	return fmt.Fprintf(a, "\t%s\t%s\n", inst, arg)
}
