// package for DNA-related operations
package strand

import "strings"

var replacer = strings.NewReplacer(
	"G", "C",
	"C", "G",
	"T", "A",
	"A", "U",
)

// Convert a string of DNA to it's RNA complement, per RNA transcription
//
// RNA transcription replaces nucleotides with their RNA complements
//
//     G -> C   // guanine  -> cytosine
//     C -> G   // cytosine -> guanine
//     T -> A   // thymine  -> adenine
//     A -> U   // adenine  -> uracil
//
func ToRNA(dna string) string {
	return replacer.Replace(dna)
}
