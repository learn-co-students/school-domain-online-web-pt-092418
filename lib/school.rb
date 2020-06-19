class School
 attr_accessor :roster, :school_name

 def initialize(school_name)
   @roster = {}
   @roster = roster
 end

 def add_student(student, grade)
  @roster[grade] ||= []
  @roster[grade] << student
 end

 def grade(student)
   @roster[student]
 end

 def sort()
   new_roster = {}
   @roster.each do |grade, student|
     new_roster[grade] = student.sort
   end
   new_roster
 end


end
