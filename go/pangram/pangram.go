package pangram

import (
	"bytes"
	"strings"
)

const testVersion = 1

func IsPangram(s string) bool {
	b := []byte(strings.ToLower(s))

	for i := 97; i <= 122; i++ {
		char := []byte{byte(i)}
		if !bytes.Contains(b, char) {
			return false
		}
	}
	return true
}
