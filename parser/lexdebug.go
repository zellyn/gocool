// Routines for debugging the lex phase of the parser.

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

func printItem(i item) string {
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
		return fmt.Sprintf("TYPEID %s", i.val)
	case OBJECTID:
		return fmt.Sprintf("OBJECTID %s", i.val)
	case ASSIGN:
		return "ASSIGN"
	case STRING:
		return fmt.Sprintf("STR_CONST \"%s\"", printableString(unescapeString(i.val)))
	case NUM:
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

func printErrorItem(i item) string {
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
		return fmt.Sprintf("TYPEID = %s", i.val)
	case OBJECTID:
		return fmt.Sprintf("OBJECTID = %s", i.val)
	case ASSIGN:
		return "ASSIGN"
	case STRING:
		return fmt.Sprintf("STR_CONST \"%s\"", printableString(unescapeString(i.val)))
	case NUM:
		return fmt.Sprintf("INT_CONST = %s", i.val)
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

func LexItems(name, input string) []string {
	result := []string{}
	l := newLex(name, input)
	for {
		i := l.nextItem()
		if i.typ == eof {
			break
		}
		s := fmt.Sprintf("#%d %s", l.lineNumber(), printItem(i))
		result = append(result, s)
	}
	return result
}
