class Employee

    attr_accessor :name, :office, :title

end

class Manager < Employee
    
    attr_accessor :department, :subordinates
    
end

class Administrative < Employee
    
    attr_accessor :duties
    
end

employee_1 = Administrative.new
employee_1.name= "Lucas Pagan"
employee_1_name = employee_1.name
employee_1.office= "Austin"
employee_1_office = employee_1.office
employee_1.title = "Grant Manager"
employee_1_title = employee_1.title
employee_1.duties = "Accounting and Payroll"
employee_1_duties = employee_1.duties

employee_2 = Manager.new
employee_2.name= "Elizabeth Russell"
employee_2_name = employee_2.name
employee_2.office= "New York"
employee_2_office = employee_2.office
employee_2.title = "Project Manager"
employee_2_title = employee_2.title
employee_2.department = "HMGP"
employee_2_department = employee_2.department
employee_2.subordinates= "Lucas Pagan"
employee_2_subs = employee_2.subordinates

puts "#{employee_1_name}, #{employee_1_title}, is located in the #{employee_1_office} office, while #{employee_2_name}, #{employee_2_title}, is located in the #{employee_2_office} office."

puts employee_1.inspect
puts employee_2.inspect
