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
    end 
    
    def sort 
      roster.sort_by.name
    end 
    
  end 
  
end