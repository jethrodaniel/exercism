using System;
using System.Linq;

public static class ArmstrongNumbers
{
    public static bool IsArmstrongNumber(int n)
    {
        Func<char, int> char_to_pow = 
            x => (int)Math.Pow(char.GetNumericValue(x), n.ToString().Length);

        return n == n.ToString().Sum(digit => char_to_pow(digit));
    }
}
