// Check if a year is a leap year
package leap

// Check if a year is a leap year.
//
// A leap year is every year that is evenly divisible by 4,
//   except every year that is evenly divisible by 100,
//   unless the year is also evenly divisible by 400.
//
func IsLeapYear(year int) bool {
	return (year%4) == 0 && (year%100 != 0 || year%400 == 0)
}
