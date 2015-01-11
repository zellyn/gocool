package parser

import "fmt"

// unescapeString interprets the Cool-specific backslash codes in a
// string, returning the resulting value.
func unescapeString(s string) string {
	result := []rune{}
	slash := false
	for _, r := range s {
		if slash {
			slash = false
			switch r {
			case 'b':
				r = '\b'
			case 't':
				r = '\t'
			case 'n':
				r = '\n'
			case 'f':
				r = '\f'
			}
			result = append(result, r)
			continue
		}
		if r == '\\' {
			slash = true
			continue
		}
		result = append(result, r)
	}
	return string(result)
}

// printableString formats a string for display, in a format matching
// the Java/C++ COOL scaffold code.
func printableString(s string) string {
	result := ""
	for _, c := range s {
		switch {
		case c == '\n':
			result += "\\n"
		case c == '\t':
			result += "\\t"
		case c == '\f':
			result += "\\f"
		case c == '\b':
			result += "\\b"
		case c == '\\', c == '"':
			result += "\\" + string(c)
		case c < ' ':
			result += fmt.Sprintf("\\0%02o", c)
		default:
			result += string(c)
		}
	}
	return result
}
