using System;
using System.Collections.Generic;
using System.Linq;

public class School
{
    // Holds (grade, [student1, student2, ...]) pairs
    private Dictionary<int, List<string>> students = new Dictionary<int, List<string>>();
    
    public void Add(string student, int grade)
    {
        if (this.students.ContainsKey(grade))
        {
            this.students[grade].Add(student);
        }
        else
        {
            this.students.Add(grade, new List<string>() { student });
        }
    }

    public IEnumerable<string> Roster()
    {
        var roster = new List<string>();

        foreach (var grade in this.students.Keys.OrderBy(x => x))
        {
            roster.AddRange(this.students[grade].OrderBy(x => x));
        }

        return roster;
    }

    public IEnumerable<string> Grade(int grade)
    {
        if (this.students.ContainsKey(grade))
        {
            return this.students[grade].OrderBy(x => x);
        }
        else
        {
            return new List<string>();
        }
    }
}
