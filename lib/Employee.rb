require 'pry'

class Employee

    attr_accessor :name, :salary
    attr_reader :manager
    
    @@employees = []
    

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager  
        @@employees << self 
    end 

    def manager_name
        @manager.name
    end 

    def self.all
        @@employees
    end 

    def self.paid_over(amount)
        self.all.select { |employee| employee.salary > amount }
    end

    def self.find_by_department(department)
        self.all.find { |employee| employee.manager.department == department}
    end 

    def tax_bracket 
        #self.class.all == @@employees
        @@employees.select { |employee| (employee.salary - self.salary).abs <= 1000 }
        # employee.salary <= self.salary + 1000 && employee.salary >= self.salary - 1000
    end 
end
