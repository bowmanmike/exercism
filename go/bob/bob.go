package bob // package name must match the package name in bob_test.go
import "unicode"

const testVersion = 2 // same as targetTestVersion

const shoutResponse = "Whoa, chill out!"
const questionResponse = "Sure."
const nonsenseResponse = "Fine. Be that way!"
const defaultResponse = "Whatever."

func Hey(s string) string {
	lastChar := string(s[len(s)-1])
	allCaps := true

	for _, char := range s {
		if unicode.IsLetter(char) {
			if !unicode.IsUpper(char) {
				allCaps = false
			}
		}
	}
	if allCaps {
		return shoutResponse
	} else if lastChar == "?" {
		return questionResponse
	}

	return defaultResponse
}
