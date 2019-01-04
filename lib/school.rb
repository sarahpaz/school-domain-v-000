class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student_name, grade)
    @roster[grade] ||= [] # you have to first check if the roster has a key of grade, or else the line below will throw an error. But if roster[grade] is not truthy, you will assign its value an empty array, so the line below will work. 
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|grade, student_name| student_name.sort!}
  end
end
