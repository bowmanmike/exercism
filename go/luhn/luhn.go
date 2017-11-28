package luhn

import (
	"fmt"
	"regexp"
	"strconv"
	"strings"
)

func Valid(number string) bool {
	r := regexp.MustCompile(`\s+`)
	number = r.ReplaceAllString(number, "")

	digits := strings.Split(number, "")
	if len(digits) <= 1 {
		return false
	}

	total := 0
	for i := len(digits) - 1; i >= 0; i-- {
		n, err := strconv.Atoi(digits[i])
		if err != nil {
			fmt.Println(err)
			continue
		}
		if i%2 != 0 || i == 0 {
			n = n * 2
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
