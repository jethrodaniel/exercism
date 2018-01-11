using System.Text.RegularExpressions;

public static class Bob
{
    static bool IsYelling(string s) => Regex.IsMatch(s, "[A-Z]") &&
                                      !Regex.IsMatch(s, "[a-z]");

    static bool IsAsking(string s) => s.EndsWith("?");                                

    public static string Response(string statement)
    {
        statement = statement.Trim();

        if (statement == "")
        {
            return "Fine. Be that way!";
        }
        else if (IsYelling(statement) && IsAsking(statement))
        {
            return "Calm down, I know what I'm doing!";
        }
        else if (IsYelling(statement))
        {
            return "Whoa, chill out!";
        }
        else if (IsAsking(statement))
        {
            return "Sure.";
        }
        else
        {
            return "Whatever.";
        }
    }
}
