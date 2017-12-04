package bob // package name must match the package name in bob_test.go
import (
	"regexp"
	"strings"
	"unicode"
)

const testVersion = 2 // same as targetTestVersion

const shoutResponse = "Whoa, chill out!"
const questionResponse = "Sure."
const nonsenseResponse = "Fine. Be that way!"
const defaultResponse = "Whatever."

func Hey(s string) string {
	validCharacters, _ := regexp.MatchString(`[A-Za-z0-9\,\?!]`, s)
	if len(s) == 0 || !validCharacters {
		return nonsenseResponse
	}

	s = strings.TrimSpace(s)

	// lastChar := string(s[len(s)-1])
	lastChar := "?"
	allCaps := true
	containsLetters := false
	containsNumbers := false

	for _, char := range s {
		if unicode.IsLetter(char) {
			containsLetters = true
			if !unicode.IsUpper(char) {
				allCaps = false
			}
		}
		if unicode.IsNumber(char) {
			containsNumbers = true
		}
	}
	if allCaps && containsLetters {
		return shoutResponse
	} else if lastChar == "?" {
		return questionResponse
	} else if !containsLetters && !containsNumbers {
		return nonsenseResponse
	}

	return defaultResponse
}
