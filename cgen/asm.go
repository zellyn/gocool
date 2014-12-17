package cgen

import (
	"fmt"
	"io"
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

func (a asm) Word(w int, comment ...string) (int, error) {
	if len(comment) > 0 {
		return fmt.Fprintf(a, "\t.word\t%d\t# %s\n", w, comment[0])
	}
	return fmt.Fprintf(a, "\t.word\t%d\n", w)
}

func (a asm) WordS(s string, comment ...string) (int, error) {
	if len(comment) > 0 {
		return fmt.Fprintf(a, "\t.word\t%s\t# %s\n", s, comment[0])
	}
	return fmt.Fprintf(a, "\t.word\t%s\n", s)
}

func (a asm) Ascii(s string) (int, error) {
	return fmt.Fprintf(a, "\t.ascii\t%q\n", s)
}

func (a asm) WordAlign() (int, error) {
	return fmt.Fprintf(a, "\t.align\t2\n")
}

func (a asm) Comment(s string) (int, error) {
	return fmt.Fprintf(a, "\t# %s\n", s)
}

func (a asm) CommentH2(s string) (int, error) {
	return fmt.Fprintf(a, "\n# %s\n", s)
}

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

func (a asm) Inst(inst, arg string, comment ...string) (int, error) {
	if len(comment) > 0 {
		return fmt.Fprintf(a, "\t%s\t%s\t# %s\n", inst, arg, comment[0])
	}
	return fmt.Fprintf(a, "\t%s\t%s\n", inst, arg)
}
