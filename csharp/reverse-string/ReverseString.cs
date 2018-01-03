using System;

public static class ReverseString
{
    public static string Reverse(string input)
    {
        char[] input_array = input.ToCharArray();
        Array.Reverse(input_array);
        return new string(input_array);
    }
}
