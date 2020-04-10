class Employee
  attr_reader :name, # returns a String that is the employee's name
              :salary # returns a Fixnum that is the employee's salary
  
  @@all = [] 

  def initialize name, salary
    @name = name 
    @salary = salary
    @@all << self 
  end
  
  def self.all
    @@all 
  end 

  def self.paid_over 
    all.select {|emp| emp.salary > salary}
  end 

  def self.find_by_department department 
    Manager.all.find {|man| man.department == department }
  end 

  # Array of all the employees whose salaries 
  # are within $1000 (± 1000) of the employee 
  def tax_bracket
    all.select { |emp| emp.salary >= salary - 1000 || salary <= 1000 }
  end 

  # returns a String that is the name of their manager
  def manager_name 
    Manager.all.find {|x| x.employees.contains?(self)}
  end 

end
