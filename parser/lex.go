// A hand-built lexer for Cool source files.
//
// The lexer is copied from
// http://golang.org/src/pkg/text/template/parse/lex.go and modified.
//
// The uppercase term constants are defined in parser.go, the yacc output.

package parser

import (
	"fmt"
	"strings"
	"unicode"
	"unicode/utf8"
)

// Pos represents a byte position in the original input text.
type Pos int

// item represents a token or text string returned from the scanner.
type item struct {
	typ int    // The type of this item.
	pos Pos    // The starting position, in bytes, of this item in the input string.
	val string // The value of this item.
	err string // An optional error message.
}

// key is a map of keywords: string keyword to integer type.
var key = map[string]int{
	"else":     ELSE,
	"class":    CLASS,
	"if":       IF,
	"then":     THEN,
	"fi":       FI,
	"loop":     LOOP,
	"pool":     POOL,
	"new":      NEW,
	"in":       IN,
	"inherits": INHERITS,
	"isvoid":   ISVOID,
	"let":      LET,
	"while":    WHILE,
	"case":     CASE,
	"esac":     ESAC,
	"of":       OF,
	"not":      NOT,
}

const eof = -1

// stateFn represents the state of the scanner as a function that returns the next state.
type stateFn func(*lexer) stateFn

// lexer holds the state of the scanner.
type lexer struct {
	name       string    // the name of the input; used only for error reports
	input      string    // the string being scanned
	state      stateFn   // the next lexing function to enter
	pos        Pos       // current position in the input
	start      Pos       // start position of this item
	width      Pos       // width of last rune read from input
	lastPos    Pos       // position of most recent item returned by nextItem
	items      chan item // channel of scanned items
	parenDepth int       // nesting depth of ( ) exprs
	prog       *Program  // The parsed program
	lastItem   item      // The last item emitted
	parseError bool      // True if an error occurred in parsing
}

// next returns the next rune in the input.
func (l *lexer) next() rune {
	if int(l.pos) >= len(l.input) {
		l.width = 0
		return eof
	}
	r, w := utf8.DecodeRuneInString(l.input[l.pos:])
	l.width = Pos(w)
	l.pos += l.width
	return r
}

// peek returns but does not consume the next rune in the input.
func (l *lexer) peek() rune {
	r := l.next()
	l.backup()
	return r
}

// backup steps back one rune. Can only be called once per call of next.
func (l *lexer) backup() {
	l.pos -= l.width
}

// emit passes an item back to the client.
func (l *lexer) emit(t int) {
	l.items <- item{t, l.start, l.input[l.start:l.pos], ""}
	l.start = l.pos
}

// ignore skips over the pending input before this point.
func (l *lexer) ignore() {
	l.start = l.pos
}

// accept consumes the next rune if it's from the valid set.
func (l *lexer) accept(valid string) bool {
	if strings.IndexRune(valid, l.next()) >= 0 {
		return true
	}
	l.backup()
	return false
}

// acceptRun consumes a run of runes from the valid set.
func (l *lexer) acceptRun(valid string) {
	for strings.IndexRune(valid, l.next()) >= 0 {
	}
	l.backup()
}

// lineNumber reports which line we're on, based on the position of
// the previous item returned by nextItem. Doing it this way
// means we don't have to worry about peek double counting.
func (l lexer) lineNumber() int {
	return 1 + strings.Count(l.input[:l.lastPos], "\n")
}

// emitSoftError returns an error token.
func (l *lexer) emitSoftError(err string, args ...interface{}) {
	l.items <- item{ERR, l.start, l.input[l.start:l.pos], err}
	l.start = l.pos
}

// errorf returns an error token and terminates the scan by passing
// back a nil pointer that will be the next state, terminating l.nextItem.
func (l *lexer) errorf(format string, args ...interface{}) stateFn {
	l.items <- item{ERR, l.start, l.input[l.start:l.pos], fmt.Sprintf(format, args...)}
	return nil
}

// nextItem returns the next item from the input.
func (l *lexer) nextItem() item {
	item := <-l.items
	l.lastPos = item.pos + Pos(len(item.val))
	l.lastItem = item
	return item
}

// lex creates a new scanner for the input string.
func newLex(name, input string) *lexer {
	l := &lexer{
		name:  name,
		input: input,
		items: make(chan item),
	}
	go l.run()
	return l
}

// run runs the state machine for the lexer.
func (l *lexer) run() {
	for l.state = lexStart; l.state != nil; {
		l.state = l.state(l)
	}
}

// state functions

const (
	leftComment  = "(*"
	rightComment = "*)"
	lineComment  = "--"
	assign       = "<-"
	darrow       = "=>"
	le           = "<="
	digits       = "0123456789"
	operators    = "+-*/"
	comparators  = "<="
	singleChars  = "{}():;,.~@"
)

// lexStart is the generic lex state, waiting to see anything at all.
func lexStart(l *lexer) stateFn {
	if strings.HasPrefix(l.input[l.pos:], leftComment) {
		return lexComment
	}
	if strings.HasPrefix(l.input[l.pos:], lineComment) {
		return lexLineComment
	}
	if strings.HasPrefix(l.input[l.pos:], assign) {
		l.pos += Pos(len(assign))
		l.emit(ASSIGN)
		return lexStart
	}
	if strings.HasPrefix(l.input[l.pos:], darrow) {
		l.pos += Pos(len(darrow))
		l.emit(DARROW)
		return lexStart
	}
	if strings.HasPrefix(l.input[l.pos:], le) {
		l.pos += Pos(len(le))
		l.emit(CMP)
		return lexStart
	}
	if strings.HasPrefix(l.input[l.pos:], rightComment) {
		l.pos += Pos(len(rightComment))
		l.emitSoftError(fmt.Sprintf("Unmatched %s", rightComment))
		return lexStart
	}
	switch r := l.next(); {
	case r == eof:
		l.emit(eof)
		return nil
	case isWhitespace(r):
		return lexWhitespace
	case unicode.IsLetter(r):
		l.backup()
		return lexIdentifier
	case unicode.IsDigit(r):
		l.backup()
		return lexNumber
	case strings.ContainsRune(operators, r):
		l.emit(int(r))
	case strings.ContainsRune(comparators, r):
		l.emit(CMP)
	case strings.ContainsRune(singleChars, r):
		l.emit(int(r))
	case r == '"':
		return lexQuote
	default:
		// return l.errorf("unrecognized character at pos %d: %#U", l.pos, r)
		l.emitSoftError(string(r))
	}
	return lexStart
}

// lexWhitespace scans a run of whitespace characters.
// One space has already been seen.
func lexWhitespace(l *lexer) stateFn {
	for isWhitespace(l.peek()) {
		l.next()
	}
	l.ignore()
	return lexStart
}

// lexComment scans a comment. The left comment marker is known to be present.
func lexComment(l *lexer) stateFn {
	l.pos += Pos(len(leftComment))
	depth := 1
	for {
		left := strings.Index(l.input[l.pos:], leftComment)
		right := strings.Index(l.input[l.pos:], rightComment)
		if left < 0 && right < 0 {
			// return l.errorf("EOF in comment")
			l.pos = Pos(len(l.input))
			l.emitSoftError("EOF in comment")
			return lexStart
		}
		// next is a comment start
		if left >= 0 && (right < 0 || left < right) {
			depth++
			l.pos += Pos(left + len(leftComment))
			continue
		}
		// next is a comment end
		l.pos += Pos(right + len(rightComment))
		depth--
		if depth == 0 {
			l.ignore()
			break
		}
	}
	return lexStart
}

// lexLineComment scans a single-line comment. The comment marker is known to be present.
func lexLineComment(l *lexer) stateFn {
	l.pos += Pos(len(lineComment))
	for {
		r := l.next()
		switch {
		case isEndOfLine(r), r == eof:
			l.backup()
			l.ignore()
			return lexStart
		}
	}
}

// lexIdentifier scans an alphanumeric.
func lexIdentifier(l *lexer) stateFn {
Loop:
	for {
		switch r := l.next(); {
		case isAlphaNumeric(r):
			// absorb.
		default:
			l.backup()
			word := l.input[l.start:l.pos]
			lword := strings.ToLower(word)
			first, _ := utf8.DecodeRuneInString(word)
			low := unicode.IsLower(first)
			switch {
			case key[lword] > 0:
				l.emit(key[lword])
			case low && lword == "true", low && lword == "false":
				l.emit(BOOL)
			case low:
				l.emit(OBJECTID)
			default:
				l.emit(TYPEID)
			}
			break Loop
		}
	}
	return lexStart
}

// lexNumber scans a single numeric constant.
func lexNumber(l *lexer) stateFn {
	l.acceptRun(digits)
	l.emit(NUM)
	return lexStart
}

// lexQuote scans a quoted string. The opening quote has already been seen.
func lexQuote(l *lexer) stateFn {
	l.ignore()
	null := false
	nullEscaped := false
Loop:
	for {
		switch l.next() {
		case '\\':
			if r := l.next(); r != eof {
				if r == 0 {
					nullEscaped = true

				}
				break
			}
			fallthrough
		case '\n':
			if null {
				l.backup()
				l.emitSoftError("String contains null character.")
				l.next()
				l.ignore()
				return lexStart
			}
			if nullEscaped {
				l.emitSoftError("String contains escaped null character.")
				return lexStart
			}
			l.emitSoftError("Unterminated string constant")
			return lexStart
		case eof:
			l.emitSoftError("EOF in string constant")
			return lexStart
		case '"':
			break Loop
		case '\000':
			null = true
		}
	}
	if null {
		l.emitSoftError("String contains null character.")
		return lexStart
	}
	if nullEscaped {
		l.emitSoftError("String contains escaped null character.")
		return lexStart
	}
	if len(unescapeString(l.input[l.start:l.pos])) > 1025 {
		l.emitSoftError("String constant too long")
		return lexStart
	}
	l.backup()
	l.emit(STRING)
	l.next()
	l.ignore()
	return lexStart
}

// isWhitespace reports whether r is a whitespace (space or end-of-line) character.
func isWhitespace(r rune) bool {
	return isSpace(r) || isEndOfLine(r) || r == '\f' || r == '\v'
}

// isSpace reports whether r is a space character.
func isSpace(r rune) bool {
	return r == ' ' || r == '\t'
}

// isEndOfLine reports whether r is an end-of-line character.
func isEndOfLine(r rune) bool {
	return r == '\r' || r == '\n'
}

// isAlphaNumeric reports whether r is an alphabetic, digit, or underscore.
func isAlphaNumeric(r rune) bool {
	return r == '_' || unicode.IsLetter(r) || unicode.IsDigit(r)
}

// Error is used by the yacc-generated parser to signal errors.
func (l *lexer) Error(e string) {
	l.parseError = true
	fmt.Printf("%q, line %d: %s at or near %s\n", l.name, l.lineNumber(), e, printItem(l.lastItem, true))
}

// Lex is used by the yacc-generated parser to fetch the next Lexeme.
func (l *lexer) Lex(lval *yySymType) int {
	i := l.nextItem()
	*lval = yySymType{str: i.val, line: l.lineNumber()}
	return i.typ
}
