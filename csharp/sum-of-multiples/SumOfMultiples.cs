using System.Collections.Generic;
using System.Linq;

public static class SumOfMultiples
{
    public static int Sum(IEnumerable<int> multiples, int max) =>
        (from m in multiples
         from n in Enumerable.Range(0, max)
         where n % m == 0
         select (n)).Distinct().Sum();
}
