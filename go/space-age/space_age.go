// package to calculate age on specific planets
package space

type Planet string

const secondsInEarthYear = 60 * 60 * 24 * 365.25

func orbitalPeriod(planet Planet) float64 {
	var result float64

	switch planet {
	case "Earth":
		result = 1
	case "Mercury":
		result = 0.2408467
	case "Venus":
		result = 0.61519726
	case "Mars":
		result = 1.8808158
	case "Jupiter":
		result = 11.862615
	case "Saturn":
		result = 29.447498
	case "Uranus":
		result = 84.016846
	case "Neptune":
		result = 164.79132
	}

	return result
}

// Calculates age on the specified planet as measured in Earth years.
func Age(seconds float64, planet Planet) float64 {
	orbitalPeriod := orbitalPeriod(planet)

	return seconds / (secondsInEarthYear * orbitalPeriod)
}
