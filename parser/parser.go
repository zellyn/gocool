package parser

import "errors"

func Parse(filename, text string) (*Program, error) {
	l := newLex(filename, text)
	e := yyParse(l)
	if e == 0 && !l.parseError {
		return l.prog, nil
	}
	return nil, errors.New("Compilation halted due to lex and parse errors")
}
