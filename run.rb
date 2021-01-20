require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

alex = Manager.new("Alex", 28, "Enginnering")
kevin = Manager.new("Kevin", 28, "sales")

# yvonne = Employee.new("Yvonne", 30, alex)
# emily = Employee.new("Emily", 29, alex)
# michelle = Employee.new("Michelle", 25, kevin)
# jerry = Employee.new("Jerry", 28, kevin)

alex.hire_employee("Yvonne", 45000)



binding.pry
puts "done"
