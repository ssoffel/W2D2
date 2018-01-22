class Employee
  attr_reader :name, :title, :salary, :boss
  def initialize(name, title, salary, boss)
    @name = name 
    @title = title 
    @salary = salary 
    @boss = boss
  end
  
  def bonus(multiplier)
    @salary * multiplier
  end
end

class Manager < Employee
  attr_accessor :employees
  def initialize(employees=[])
    @employees = employees
  end
  
  def bonus(multiplier)
    sum = 0
    @employees.each do |employee|
      sum += employee.salary 
    end 
    sum * multiplier
  end
  
end
# misun = Employee.new("misun", "assistant", 100, "aAacademy")
# scott =  Employee.new("scott", "assistant", 100, "aAacademy")
# manager = Manager.new([misun, scott])