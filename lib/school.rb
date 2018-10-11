require 'pry'

class School
  attr_accessor :roster

  def initialize(school_name)
    @roster = Hash.new
  end
  
  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade].push(student)
  end
  
  def grade(student)
    @roster[student]
  end
  
  def sort
    sorted = Hash.new
    
    @roster.each do |grade, student|
      sorted[grade] = student.sort
    end
    sorted
  end
end

# school = School.new("Bayside High School")
# school.add_student("Zach Morris", 9)