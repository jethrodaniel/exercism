// check if a gigasecond has passed
package gigasecond

import "time"

// Given a moment, return the moment that would be after a gigasecond has
// passed.
//
// A gigasecond is 10^9 (1,000,000,000) seconds.
//
func AddGigasecond(t time.Time) time.Time {
	return t.Add(time.Second * 1e9)
}
