package cgen

// File constants.go contains the code for referring to Integer,
// Boolean, and String constants. Any time a constant is referred to
// in COOL, it needs to be presend in the data segment of the program,
// so we need to collect, generate, and refer to them consistenly.

import (
	"fmt"
	"strconv"
	"strings"
)

// constants holds and generates code for int, string, bool constants
// in code.
type constants struct {
	ints        map[int]bool
	strings     map[string]string
	stringCount int
}

// formatInt formats an int constant into a label
func (c *constants) formatInt(i int) string {
	return fmt.Sprintf("int_const%d", i)
}

// int adds (or looks up) an integer constant by value, and returns its name.
func (c *constants) int(s string) string {
	// ints are named int_const{value}, to make things easy to read.
	i, err := strconv.Atoi(s)
	if err != nil {
		panic(fmt.Sprintf("Don't expect invalid int contants to make it past the lexer: %s", err))
	}
	if c.ints == nil {
		c.ints = make(map[int]bool)
	}
	c.ints[i] = true
	return c.formatInt(i)
}

// string adds (or looks up) a string constant by value, and returns
// its name. It also adds the int constant required to store the
// string's length.
func (c *constants) string(s string) string {
	if name, ok := c.strings[s]; ok {
		return name
	}
	if c.strings == nil {
		c.strings = make(map[string]string)
	}

	// Strings are named str_const0, str_const, ...
	name := fmt.Sprintf("str_const%d", c.stringCount)
	c.stringCount++
	c.strings[s] = name
	c.int(strconv.Itoa(len(s)))
	return name
}

// bool looks up a boolean constant by (token string) value
// (eg. "true" or "false"). It's just for convenience: they always
// have the same names.
func (c *constants) bool(s string) string {
	if strings.ToLower(s) == "false" {
		return "bool_False"
	}
	return "bool_True"
}
