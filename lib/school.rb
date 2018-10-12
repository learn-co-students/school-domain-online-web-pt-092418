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
      @grade
      Roster.grade
    end 
    
    def sort(name) 
      new_hash = [] << name.sort
    end 
    
  end 
  
end