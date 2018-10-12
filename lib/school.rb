class School
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def roster
    @roster
  end 
  
  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
    
    def grade(grade)
      
    end 
    
    def sort(roster) 
     sorted = roster.sort {|name| name}
    end 
  end 
end
