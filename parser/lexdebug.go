// Routines for debugging the lex phase of the parser.

package parser

import "fmt"

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
		s := fmt.Sprintf("%d %s", l.lineNumber(), i)
		result = append(result, s)
		if i.typ == itemError {
			break
		}
	}
	return result
}
