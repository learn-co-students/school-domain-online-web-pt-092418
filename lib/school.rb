require 'pry'
class School
    attr_reader :roster
    # attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end 
    def name 
        @name 
    end 

    def add_student(name, grade)
        # binding.pry
        #check for key
        # a key can't exist w/in a hash w/out a value
        # if roster[grade] != nil # when we'll get the value
        if roster.keys.include?(grade)
            #code for when key exists
            roster[grade] << name
        else
            roster[grade] = [] # //roster[10] = [], add_ k/v pair to the hash
            roster[grade] << name
            roster[grade] = [name]            
        end
    end

    def grade(grade)
        roster[grade] == @roster[grade]
    end

    def sort
        {9=>["Homer Simpson", "Bart Simpson"], 10=>["Avi Flombaum", "Jeff Baird"], 7=>["Blake Johnson", "Jack Bauer"]}
        hash = {}
        roster.sort.each do | grade, names_arr|
            hash[grade] = names_arr.sort
        end
        hash

        another way
        hash = {}
        roster.each do | grade, names_arr|
            hash[grade] = names_arr.sort
        end
        hash.sort.to_h
    end
    reader == getter
    def roster
        @roster
    end

    writer == setter
    def roster=(hash)
        @roster = hash
    end
end

school = School.new('Flatiron')