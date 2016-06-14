package leap

const testVersion = 2

// IsLeapYear takes a year as an argument and returns a boolean depending on
// whether or not it's a leap year.
func IsLeapYear(year int) bool {
	var val bool
	if year%4 == 0 && year%400 == 0 {
		val = true
	} else if year%100 == 0 {
		val = false
	} else if year%4 == 0 {
		val = true
	}
	return val
}
