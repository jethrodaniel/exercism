using System;

public static class Raindrops
{
    public static string Convert(int number)
    {
        var rain_speak = "";

        if (number % 3 == 0)
        {
            rain_speak += "Pling";
        }
        if (number % 5 == 0)
        {
            rain_speak += "Plang";
        }
        if (number % 7 == 0)
        {
            rain_speak += "Plong";
        }
        if ((number % 3 != 0) && (number % 5 != 0) && (number % 7 != 0))
        {
            rain_speak = number.ToString();
        }

        return rain_speak;
    }
}
