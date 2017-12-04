// Package twofer helps us share
package twofer

// ShareWith returns a string saying who I'm sharing with.
func ShareWith(person string) string {
	if person == "" {
		person = "you"
	}
	// Using + to concatenate strings is *way* faster than
	// using fmt.Sprintf, but it only works if all the values
	// you're working with are strings.
	return "One for " + person + ", one for me."
}
