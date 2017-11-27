// Package diffsquares contains functions to determine the sum of squares
// and the square of sums of the first n numbers.
package diffsquares

// SquareOfSums calculates the square of the sum of the first n natural
// numbers.
func SquareOfSums(max int) int {
	c := 0
	for i := 0; i <= max; i++ {
		c += i
	}
	return c * c
}

// SumOfSquares calculates the sum of the squares of the first n natural
// numbers.
func SumOfSquares(max int) int {
	c := 0
	for i := 0; i <= max; i++ {
		c += i * i
	}
	return c
}

// Difference calculates the difference between the square of the sum
// and the sum of the squares of the first n natural numbers.
func Difference(max int) int {
	return SquareOfSums(max) - SumOfSquares(max)
}
