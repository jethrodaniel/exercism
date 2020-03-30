// check if a gigasecond has passed
package gigasecond

// import path for the time package from the standard library
import "time"

var gigasecond, _ = time.ParseDuration("1000000000s")

// Given a moment, return the moment that would be after a gigasecond has
// passed.
//
// A gigasecond is 10^9 (1,000,000,000) seconds.
//
func AddGigasecond(t time.Time) time.Time {
	return t.Add(gigasecond)
}
