using System.Collections.Generic;
using System.Text.RegularExpressions;

public class NucleotideCount
{
    private IDictionary<char, int> dict = new Dictionary<char, int> {
        { 'A', 0 },
        { 'C', 0 },
        { 'G', 0 },
        { 'T', 0 }
    };

    public NucleotideCount(string sequence)
    {
        if (!Regex.IsMatch(sequence, "^[ACGT]*$"))
        {
            throw new InvalidNucleotideException();
        }

        foreach (var c in sequence)
        {
            this.dict[c]++;
        }
    }

    public IDictionary<char, int> NucleotideCounts { get => this.dict; }
}

public class InvalidNucleotideException : System.Exception { }
