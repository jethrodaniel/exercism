using System;

public static class Leap
{
    public static bool IsLeapYear(int year)
    {
        // A leap year is every year whose number is evenly divisible by four,
        // except for years which are both divisible by 100 and not divisible
        // by 400
        return    (year % 4   == 0) &&
               !( (year % 100 == 0) && (year % 400 != 0) );
    }
}
