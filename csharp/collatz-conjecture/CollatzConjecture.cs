public static class CollatzConjecture
{
    public static int Steps(int number)
    {
        if (number < 1)
        {
            throw new System.ArgumentException();
        }

        int count = 0;

        while (number > 1)
        {
            number = number.Collatz();
            ++count;
        }

        return count;
    }

    public static int Collatz(this int number) => 
        (number % 2 == 0) ? number / 2 : number * 3 + 1;
}
