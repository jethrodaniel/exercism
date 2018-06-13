val COMPLEMENTS = mapOf(
        'G' to 'C',
        'C' to 'G',
        'T' to 'A',
        'A' to 'U'
)

fun transcribeToRna(dna: String): String {
    return dna.map { COMPLEMENTS[it.toUpperCase()] ?: ""}
              .joinToString(separator = "")
}
