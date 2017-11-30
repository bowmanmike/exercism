// Package grains contains functions to calculate the number of grains
// of sand on a chessboard.
package grains

import (
	"errors"
	"math"
)

// Square returns the number of grains on particular numbered square
func Square(input int) (uint64, error) {
	if input <= 0 || input > 64 {
		return 0, errors.New("input must be a number between 1 and 64")
	}

	return uint64(math.Pow(2, float64(input-1))), nil
}

// Total returns the total number of grains on a chessboard
func Total() uint64 {
	var tot uint64
	for i := 1; i <= 64; i++ {
		// Ignoring error here because the input will always
		// be between 1 and 64
		t, _ := Square(i)
		tot += t
	}
	return tot
}
