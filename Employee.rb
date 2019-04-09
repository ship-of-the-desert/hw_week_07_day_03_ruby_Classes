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
        if (@level=="level 1")
            @balance = @balance + 2000
        elsif (@level=="level 2")
            @balance = @balance + 4000
        elsif (@level=="level 3")
            @balance = @balance + 6000
        else 
        @balance = 0
        end 
        @balance = @balance -  (( 20 - @absence) * ( @balance / 30 )) 
    end
    def check
       
        p "#{@name} has a #{@level} , and absent:#{@absence} , And delay : #{@late} Once , This is equal #{(@late/3).truncate} And then became a salary #{@balance}" 
    
    end 
end
ahmed = Employee.new("ahmed" , "level 1")
ahmed.absent(6)
ahmed.late(7)
ahmed.add_balance
ahmed.check
khalid = Employee.new("khalid" , "level 3")
khalid.absent(1)
khalid.late(4)
khalid.add_balance
khalid.check
mohammed = Employee.new("mohammed" , "level 1")
mohammed.absent(16)
mohammed.late(6)
mohammed.add_balance
mohammed.check