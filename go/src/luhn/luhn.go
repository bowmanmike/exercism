// Package luhn contains functions to validate a string
// against the Luhn algorithm.
package luhn

import (
	"regexp"
	"strconv"
	"strings"
)

// Valid returns whether or not the provided string is valid
// under the Luhn algorithm.
func Valid(number string) bool {
	// Delete whitespace from the provided string
	r := regexp.MustCompile(`\s+`)
	number = r.ReplaceAllString(number, "")

	// Split the string into a slice of characteres
	digits := strings.Split(number, "")
	if len(digits) <= 1 {
		return false
	}

	total := 0
	// Loop over digits in reverse order
	for i := len(digits) - 1; i >= 0; i-- {
		n, err := strconv.Atoi(digits[i])
		if err != nil {
			// Skip entry if the character cannot be converted
			// to an int
			return false
		}
		// This section is confusing
		// Starting with the last element, perform checks on every
		// second element
		if i%2 != 0 || i == 0 {
			// Double element
			n = n * 2
			// If greater than 9, subtract 9
			if n > 9 {
				n = n - 9
			}
		}
		total += n
	}
	if total%10 == 0 {
		return true
	}

	return false
}
