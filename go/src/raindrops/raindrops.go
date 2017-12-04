package raindrops

import (
	"fmt"
	"strings"
)

const testVersion = 2

type intStringPair struct {
	Factor int
	String string
}

var intStringPairs = []intStringPair{
	{3, "Pling"},
	{5, "Plang"},
	{7, "Plong"},
}

func Convert(i int) string {
	return checkFactors(i)
}

func checkFactors(i int) string {
	var result []string
	for _, pair := range intStringPairs {
		if i%pair.Factor == 0 {
			result = append(result, pair.String)
		}
	}
	if len(result) == 0 {
		result = append(result, fmt.Sprintf("%v", i))
	}
	return strings.Join(result, "")
}
