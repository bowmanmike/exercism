package hello

import "fmt"

const testVersion = 2

// HelloWorld greets the user to name, if provided
func HelloWorld(str string) string {
	var name string

	if str == "" {
		name = "World"
	} else {
		name = str
	}
	var greeting = fmt.Sprintf("Hello, %s!", name)
	return greeting
}
