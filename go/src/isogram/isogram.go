// Package isogram contains functions to determine whether
// or not a string is an isogram.
package isogram

import (
	"strings"
	"unicode"
)

// IsIsogram checks to see if a word has any repeated letters.
// It ignores case, and and non-letter characters.
func IsIsogram(input string) bool {
	hasChars := map[rune]bool{}

	for _, char := range []rune(strings.ToLower(input)) {
		if !unicode.IsLetter(char) {
			continue
		}
		if hasChars[char] {
			return false
		}
		hasChars[char] = true
	}

	return true
}
