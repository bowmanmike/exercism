package space

const earthYear = 31557600

type Planet string

var yearLengths = map[Planet]float64{
	"Earth":   earthYear,
	"Mercury": 0.2408467 * earthYear,
	"Venus":   0.61519726 * earthYear,
	"Mars":    1.8808158 * earthYear,
	"Jupiter": 11.862615 * earthYear,
	"Saturn":  29.447498 * earthYear,
	"Uranus":  84.016846 * earthYear,
	"Neptune": 164.79132 * earthYear,
}

func Age(seconds float64, planet Planet) float64 {
	return seconds / yearLengths[planet]
}

// NUMBERS
// Earth: orbital period 365.25 Earth days, or 31557600 seconds
// Mercury: orbital period 0.2408467 Earth years
// Venus: orbital period 0.61519726 Earth years
// Mars: orbital period 1.8808158 Earth years
// Jupiter: orbital period 11.862615 Earth years
// Saturn: orbital period 29.447498 Earth years
// Uranus: orbital period 84.016846 Earth years
// Neptune: orbital period 164.79132 Earth years

// So if you were told someone were 1,000,000,000 seconds old, you should
// be able to say that they're 31.69 Earth-years old.
