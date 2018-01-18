class School  
  def initialize
    @grade_levels = Hash.new { |h, k| h[k] = [] }
  end
  
  def add(student, grade)
    @grade_levels[grade].push(student).sort!
  end

  def students(grade)
    @grade_levels[grade]
  end

  def students_by_grade
    @grade_levels.sort.map { |k, v| { grade: k, students: v } }.dup
  end
end
