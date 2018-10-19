# code here!
class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end


  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(student)
    @roster[student]
  end

  def sort
    new_roster= Hash.new
    @roster.each do |grade, student|
      new_roster[grade]= student.sort
  end
    new_roster
  end
end
