import java.time.LocalDate
import java.time.LocalDateTime
import java.time.temporal.Temporal

class Gigasecond(start: Temporal, val date: LocalDateTime = when (start) {
    is LocalDateTime -> start
    is LocalDate -> start.atTime(0, 0)
    else -> throw IllegalArgumentException("Bad input!")
}.plusSeconds(1_000_000_000))
