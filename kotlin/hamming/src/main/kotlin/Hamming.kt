object Hamming {
    fun compute(a: String, b:String): Int {
        if (a.length != b.length) {
            throw IllegalArgumentException("left and right strands must be of equal length.")
        }

        return a.zip(b).count { pair -> pair.first != pair.second }
    }
}