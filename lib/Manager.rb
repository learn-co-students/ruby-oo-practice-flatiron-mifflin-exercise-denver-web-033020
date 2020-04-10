class Manager
  attr_reader :name, # String that is the manager's name
              :department, # String that is the department that the manager oversees
              :age, # Fixnum that is the age of the manager
              :employees # Array of all the employees that the manager oversees

  @@all = [] 

  def initialize name, department, age 
    @name = name 
    @department = department
    @age = age
    @employees = [] 
    @@all << self  
  end

  # Array of all the managers
  def self.all
    @@all 
  end

  def self.all_departments 
    self.all.map {|manager| manager.department}.uniq 
  end 

  def.average_age 
    sum_man_ages = all.reduce(0) {|agg, manager| agg += manager.age }
    sum_man_ages.to_f / all.count 
  end 

  # rtakes a String argument and a Fixnum argument of 
  # an employee's name and the employee's salary, respectively, 
  # and adds that employee to the list of employees that the manager oversees
  def hire_employee emp_name, emp_salary 
    employees << = Employee.new(emp_name,emp_salary)
  end

end
