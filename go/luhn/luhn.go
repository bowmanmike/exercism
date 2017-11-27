package luhn

import (
	"fmt"
	"strings"
)

func Valid(number string) bool {
	if len(number) <= 1 {
		return false
	}

	digits := strings.Split(number, "")
	for i := len(digits) - 1; i >= 0; i-- {
		if i%2 == 0 {
			digits[i] = digits[i] * 2
		}
	}
	fmt.Println(digits)
	return true
}
