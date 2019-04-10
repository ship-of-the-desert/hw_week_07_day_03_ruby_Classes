class Employee
    def initialize
        @absent_allowance=20
        @late_counter=0
        @salary=0
    end

    def absent(days)
        @absent_allowance-=days
    end

    def late
        @late_counter+=1
        if @late_counter==3
            @absent_allowance-=1
            @late_counter=0
        end
    end

    def add_balance(level=1)
        @salary=2000*level
        day=(@salary/30)
        absents=@absent_allowance
        if absents>=0
            p @salary
        else
            @salary+=absents*day
            p @salary
        end
    end

end 

employee=Employee.new
employee.absent(22)
employee.add_balance(1)