class Employee
    def initialize(name, level)
        @name = name
        @level = level
        @absence = 20
        @balance = 0
        @late = 0
    end

    def absent(num) 
#subtracts the number of days that the employee skipped from their initial 20
        @absence = @absence - num
    end

    def late(num) 
#stores the number of times the employee was late to their late counter
#Make every 3 lates count as 1 absence
        num1 = num
        @late = @late + num
        until num1 < 3
                @absence = @absence - 1
                num1 = num1 - 3
        end
    end

    def add_balance #adds salary money to the Employee's balance

        if (@level=="level1")
            @balance = @balance + 2000
        elsif (@level=="level2")
            @balance = @balance + 4000
        elsif (@level=="level3")
            @balance = @balance + 6000
        else 
        @balance = 0
        end 
        @balance = @balance -  (( 20 - @absence) * ( @balance / 30 )) 
    end

    def check
        puts @name 
        puts @level
        puts @absence
        puts @late 
        puts @balance
    
    end 
end

ahmed = Employee.new("ahmed" , "level3")
ahmed.absent(9)
ahmed.late(13)
ahmed.add_balance
ahmed.check