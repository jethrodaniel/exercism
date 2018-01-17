class School  
  def initialize
    @db = Hash.new { |h, k| h[k] = [] }
  end
  
  def add(student, grade)
    @db[grade].push(student).sort!
  end

  def students(grade)
    @db[grade]
  end

  def students_by_grade
    @db.sort.map { |k, v| { grade: k, students: v } }
  end
end
