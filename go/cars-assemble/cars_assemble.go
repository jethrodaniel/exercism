package cars

// CalculateWorkingCarsPerHour calculates how many working cars are
// produced by the assembly line every hour.
func CalculateWorkingCarsPerHour(productionRate int, successRate float64) float64 {
	return float64(productionRate) * (successRate / 100)
}

// CalculateWorkingCarsPerMinute calculates how many working cars are
// produced by the assembly line every minute.
func CalculateWorkingCarsPerMinute(productionRate int, successRate float64) int {
	carsPerMinute := productionRate / 60
	result := float64(carsPerMinute) * (successRate / 100)
	return int(result)
}

// CalculateCost works out the cost of producing the given number of cars.
func CalculateCost(carsCount int) uint {
	var (
		groupsOfTen uint = uint(carsCount) / 10
		remainder   uint = uint(carsCount) - 10*groupsOfTen
	)

	return groupsOfTen*95_000 + remainder*10_000
}
