// Compute hamming distance of two strings
package hamming

import (
	"errors"
	"fmt"
)

// Compute hamming distance of two strings.
//
// The Hamming distance of two strings is the number of positions in which the
// two strings are different.
//
// We error if the strings aren't of equal length, as the Hamming distance is
// not defined in such a situation.
//
func Distance(a, b string) (int, error) {
	if len(a) != len(b) {
		return 0, errors.New(fmt.Sprintf("Distance(%q, %q); expected error, got nil.", len(a), len(b)))
	}

	differences := 0

	for i := 0; i < len(a); i++ {
		if a[i] != b[i] {
			differences++
		}
	}

	return differences, nil
}
