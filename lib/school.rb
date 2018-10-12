class School
  def initialize(school_name)
    @school_name= school_name
    @roster={}
  end
  def roster
    @roster
  end
  def add_student(name, grade)
    @name=name
    @grade=grade
    if @roster.include?(@grade)
      @roster[@grade] << @name
    else
      @roster[@grade]=[@name]
    end
  end
  def grade(grade)
    @roster[grade]
  end
  def sort
    @roster.each{|key,value| value.sort!}
  end
end
