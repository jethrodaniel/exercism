object Pangram {
    fun isPangram(string: String): Boolean {
        return ('a'..'z').all { string.contains(it, ignoreCase = true) }
    }
}