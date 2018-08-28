class Employee
  
  def initialize(name, salary, boss)
    @name = name
    @salary = salary
    @boss = boss
  end
  
  def bonus(multiplier)
    @salary * multiplier
  end
  
  
  
  
end


class Manager < Employee
  
  def initialize(direct_reports = [])
    @direct_reports = direct_reports
    super
  end
  
  def bonus(multiplier)
    @direct_reports.reduce(:+) * multiplier
  end
  
end

if __FILE__ = $PROGRAM_NAME
  darren = Manager.new("Darren", 78_000, "Ned")
  shawna = Employee.new("Shawna", 12_000, darren)

  
  
end