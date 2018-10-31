# code here
class School
  attr_accessor :name, :roster
  
  def initialize(school_name)
    @name = school_name
    @roster = {}
  end
  
  def add_student(student, grade)
    if roster.key?(grade)
      roster[grade] << student
    elsif 
      roster[grade] = []
      roster[grade] << student
    end
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort
    roster.each_value(&:sort!)
  end
end