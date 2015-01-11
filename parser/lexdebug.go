// File lexdebug.go contains routines for debugging the lex phase of
// the parser. Specifically, it can print them in a format that
// matches the COOL Java/C++ scaffolding code.

package parser

import (
	"fmt"
	"strings"
)

var reprs = map[int]string{}

func init() {
	for k, v := range key {
		reprs[v] = strings.ToUpper(k)
	}
}

// printItem prints a single lexeme. If forErrors is true, it prints
// the '=' signs for TYPEID, OBJECTID, and INT_CONST required to match
// the parser errors in the test output. Otherwise it tries to match
// the lex test output.
func printItem(i item, forErrors bool) string {
	if s := reprs[i.typ]; s != "" {
		return s
	}
	if strings.ContainsRune(singleChars+operators, rune(i.typ)) {
		return fmt.Sprintf("'%c'", i.typ)
	}
	switch i.typ {
	case eof:
		return "EOF"
	case ERR:
		return fmt.Sprintf("ERROR \"%s\"", printableString(i.err))
	case BOOL:
		return fmt.Sprintf("BOOL_CONST %s", strings.ToLower(i.val))
	case TYPEID:
		if forErrors {
			return fmt.Sprintf("TYPEID = %s", i.val)
		}
		return fmt.Sprintf("TYPEID %s", i.val)
	case OBJECTID:
		if forErrors {
			return fmt.Sprintf("OBJECTID = %s", i.val)
		}
		return fmt.Sprintf("OBJECTID %s", i.val)
	case ASSIGN:
		return "ASSIGN"
	case STRING:
		return fmt.Sprintf("STR_CONST \"%s\"", printableString(unescapeString(i.val)))
	case NUM:
		if forErrors {
			return fmt.Sprintf("INT_CONST = %s", i.val)
		}
		return fmt.Sprintf("INT_CONST %s", i.val)
	case DARROW:
		return "DARROW"
	case CMP:
		if i.val == "<=" {
			return "LE"
		}
		return fmt.Sprintf("'%s'", i.val)
	default:
		return fmt.Sprintf("%+v", i)
	}
}

// LexItems lexes a given input string, and returns an array of
// strings, each with a lexeme formatted in the COOL scaffolding
// style, with line numbers.
func LexItems(name, input string) []string {
	result := []string{}
	l := newLex(name, input)
	for {
		i := l.nextItem()
		if i.typ == eof {
			break
		}
		s := fmt.Sprintf("#%d %s", l.lineNumber(), printItem(i, false))
		result = append(result, s)
	}
	return result
}
