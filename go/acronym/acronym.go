package acronym

import (
	"regexp"
	"strings"
	"unicode"
)

const testVersion = 2

func Abbreviate(s string) string {
	var result []string

	r := regexp.MustCompile("[^A-Za-z0-9]")
	ary := r.Split(s, -1)

	for _, word := range ary {
		for i, char := range word {
			firstChar := i == 0
			if firstChar {
				result = append(result, string(char))
			} else if i < len(word)-1 {
				previousChar := word[i-1]
				nextChar := word[i+1]
				lowerSurround := unicode.IsLower(rune(previousChar)) && unicode.IsLower(rune(nextChar))
				if unicode.IsUpper(char) && lowerSurround {
					result = append(result, string(char))
				}
			}
		}
	}

	return strings.ToUpper(strings.Join(result, ""))
}
