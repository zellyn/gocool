package parser

import "errors"

func Parse(filename, text string) (*Program, error) {
	l := newLex(filename, text)
	e := yyParse(l)
	if e == 0 {
		return l.prog, nil
	}
	return nil, errors.New("Error")
}
