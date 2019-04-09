class Employee
def initialize (name ,level) 
    @name = name
    @level = level
    @employee_absence = 20
    @employee_late = 0
    @balance = 0
end 

      def absent(day)
         @employee_absence = @employee_absence - day #decrese days of absent  
      end 

      def late
         @employee_late = @employee_late + 1
            if @employee_late == 3 
                @employee_late = employee_late - 1
            end 
      end 


        def add_balance
            # @day_salary = @balance / 30
             if @level =="1"
                @balance = 2000
                @day_salary = @balance / 30
                if @employee_absence < 20 
                    @balance = @balance - (20 - @employee_absence)
                end
            elsif
                @level == "2"
                @balance = 4000
                @day_salary = @balance / 30
                  if @employee_absence < 20 
                      @balance = @balance -(20 - @employee_absence)
                  end 
                else 
                    @level == "3"
                    @balance = 6000 
                    @day_salary = @balance / 30
                  if @employee_absence < 20 
                      @balance = @balance -(20 - @employee_absence)
                  end 
        end 
    end
        def check
          puts "Employee details:
          Name : #{@name}
          Level : #{@level}
          number of days left in the absence account: #{@employee_absence} /20
          number of times for late: #{@employee_late}
          balance: #{@balance}"

        end 
end

# first_employee = Employee.new("alhanouf" , "1")
# first_employee.absent(1)
# first_employee.late
# first_employee.add_balance
# first_employee.check

first_employee = Employee.new("madhawi" , "3")
first_employee.absent(5)
first_employee.late
first_employee.add_balance
first_employee.check