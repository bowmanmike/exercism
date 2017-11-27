// Package twofer helps us share
package twofer

import "fmt"

// ShareWith returns a string saying who I'm sharing with.
func ShareWith(person string) string {
	if person == "" {
		person = "you"
	}
	return fmt.Sprintf("One for %s, one for me.", person)
}
