#if !defined(LEAP_H)
#define LEAP_H

#include <string>

namespace leap {
    // A leap year is every year whose number is evenly divisible by four,
    // except for years which are both divisible by 100 and not divisible by 400
    bool is_leap_year(int year) {
        return (year % 4 == 0) &&
               !( (year % 100 == 0) && (year % 400 != 0) );
    }

}

#endif
