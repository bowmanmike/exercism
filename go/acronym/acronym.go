package acronym

import "strings"

const testVersion = 2

func Abbreviate(s string) string {
	var result []string
	spl := strings.Split(s, " ")

	for _, word := range spl {
		result = append(result, string(word[0]))
	}

	return strings.Join(result, "")
}
