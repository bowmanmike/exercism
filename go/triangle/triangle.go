package triangle

import "math"

const testVersion = 3

// Pick values for the following identifiers used by the test program.
var NaT = Kind{"NaT"} // not a triangle
var Equ = Kind{"Equ"} // equilateral
var Iso = Kind{"Iso"} // isosceles
var Sca = Kind{"Sca"} // scalene

// Code this function.
func KindFromSides(a, b, c float64) Kind {
	if !verifyValueIsFloat([]float64{a, b, c}) {
		return NaT
	}
	if !checkValidTriangle(a, b, c) {
		return NaT
	}
	if a == b && b == c {
		return Equ
	}
	return NaT
}

// Notice it returns this type.  Pick something suitable.
type Kind struct {
	Name string
}

// Organize your code for readability.
func checkValidTriangle(a, b, c float64) bool {
	if a < 1 || b < 1 || c < 1 {
		return false
	}
	return true
}

func checkTriangleInequality(a, b, c float64) bool {
	if a+b < c || a+c < b || c+b < a {
		return false
	}
	return true
}

func verifyValueIsFloat(vals []float64) bool {
	for _, v := range vals {
		if v == math.NaN() || v == math.Inf(1) || v == math.Inf(-1) {
			return false
		}
	}
	return true
}
