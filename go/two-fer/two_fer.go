// simple "One for <you>, one for me" code example
package twofer

import (
	"fmt"
)

// Return a string of the form
//
//     "One for <name>, one for me."
//
// If name is `""`, then name will be `"you"`.
//
func ShareWith(name string) string {
	if name == "" {
		name = "you"
	}
	return fmt.Sprintf("One for %s, one for me.", name)
}
