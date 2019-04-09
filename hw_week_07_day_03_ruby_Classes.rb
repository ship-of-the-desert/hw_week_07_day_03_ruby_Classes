class Employee 
    def initialize(name, level)
        @name = name
        @level = level
        @absence = 20
        @lates = 0
        @balance = 0
        @total_lates = 0
    end

    def absent(days)
        @absence = @absence - days
    end

    def late
        @lates = @lates + 1
        @total_lates = @total_lates + 1
        if @lates == 3
            @absence = @absence - 1
            @lates = 0
        end
    end

    def add_balance
        if @level == 1
            @balance = 2000 - ((20 - @absence) * (2000/30))
        elsif @level == 2
            @balance = 4000 - ((20 - @absence) * (2000/30))
        elsif @level == 3
            @balance = 6000 - ((20 - @absence) * (2000/30))
        else
        end
    end

    def check 
        puts "#{@name} is level #{@level} has #{@absence} days left, #{@total_lates} lateness with a balance of #{@balance}"
    end
end

first_employee = Employee.new("mojo", 3)
first_employee.absent(3)
first_employee.add_balance
first_employee.late
first_employee.late
first_employee.late
first_employee.check
