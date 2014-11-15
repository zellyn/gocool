// This file holds the go generate command to run yacc on the grammar in cool.y.
// To build parser.go:
//	% go generate

//go:generate -command yacc go tool yacc
//go:generate yacc cool.y

// Package parser contains a (hand-built) lexer and (yacc) parser for
// the Cool programming language.
package parser
