# code here!
class School
  attr_accessor :name, :roster
#new
  #has empty roster when initialized
  def initialize(name)
    @name = name
    #why is the roster here without being passed in as an argument with name?
    @roster = {}
  end
#add_student
  #add a student
  #add multiple students to a class
  #add students to different grades
  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end
#grade
  #retrieve students from a grade
  def grade(student_grade)
    roster[student_grade]
  end
#sort
  #sort the students
  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end
