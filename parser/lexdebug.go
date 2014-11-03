// Routines for debugging the lex phase of the parser.

package parser

import (
	"fmt"
	"strings"
)

var reprs = map[itemType]string{}

func init() {
	for k, v := range single {
		if v != itemOperator && v != itemCompare {
			reprs[v] = fmt.Sprintf("'%c'", k)
		}
	}

	for k, v := range key {
		reprs[v] = strings.ToUpper(k)
	}
}

func printItem(i item) string {
	if s := reprs[i.typ]; s != "" {
		return s
	}
	switch i.typ {
	case itemError:
		return fmt.Sprintf("ERROR %q", i.err)
	case itemBool:
		return fmt.Sprintf("BOOL_CONST %s", strings.ToLower(i.val))
	case itemTypeId:
		return fmt.Sprintf("TYPEID %s", i.val)
	case itemObjectId:
		return fmt.Sprintf("OBJECTID %s", i.val)
	case itemAssign:
		return "ASSIGN"
	case itemString:
		return fmt.Sprintf("STR_CONST %q", escapedValue(i.val))
	case itemNumber:
		return fmt.Sprintf("INT_CONST %s", i.val)
	case itemDarrow:
		return "DARROW"
	case itemCompare, itemOperator:
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
	l := lex(name, input)
	for {
		i := l.nextItem()
		if i.typ == itemEOF {
			break
		}
		if i.typ == itemWhitespace {
			continue
		}
		s := fmt.Sprintf("#%d %s", l.lineNumber(), printItem(i))
		result = append(result, s)
	}
	return result
}
