package parser

func escapedValue(s string) string {
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
