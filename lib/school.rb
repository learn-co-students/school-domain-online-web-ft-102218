# code here!
require "pry"

class School

  def initialize(name)
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if !@roster[grade]
      @roster[grade] = []
      @roster[grade] << name
    else
      @roster[grade] << name
    end

  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_hash = {}
    @roster.collect do |grade, names|
      #binding.pry
      sorted_hash[grade] = names.sort
    end
    sorted_hash
  end
end
