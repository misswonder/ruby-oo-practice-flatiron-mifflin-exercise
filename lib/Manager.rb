require 'pry'

class Manager
 
    attr_accessor :name, :age, :department
    attr_reader :employees

    @@all = []
    @@all_departments = []


    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @employees = []
        @@all << self
        @@all_departments << department   

    end 

    def self.all
        @@all
    end 

    def hire_employee(name, salary)
        @employees << Employee.new(name, salary, self)
    end 

    def self.all_departments 
        @@all_departments
    end 

    def self.average_age
        total_age = 0
        # ages = self.all.map {|manager| manager.age}
        # total_age = ages.reduce(:+)
        # total_age / self.all.length
        self.all.each do |manager| 
            total_age += manager.age
        end 
        total_age / self.all.length   
    end 
end

