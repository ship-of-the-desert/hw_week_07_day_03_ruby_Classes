class Employee
    def initialize(name, level)
        @name = name
        @level = level
        @absence = 20
        @balance = 0
        @late = 0
    end
    def absent(num) 
        @absence = @absence - num
    end
    def late(num) 
        num1 = num
        @late = @late + num
        until num1 < 3
                @absence = @absence - 1
                num1 = num1 - 3
        end
    end
    def add_balance 
        if (@level=="level 1")
            @balance =  2000
        elsif (@level=="level 2")
            @balance =  4000
        elsif (@level=="level 3")
            @balance =  6000
        else 
        @balance = 0
        end 
        @balance = @balance -  (( 20 - @absence) * ( @balance / 30 )) 
    end
    def check
       
        p "#{@name} has a #{@level} , and absent:#{@absence} , And delay : #{@late} Once , This is equal #{(@late/3).truncate} And then became a salary #{@balance}" 
    
    end 
end
ahmed = Employee.new("ahmed" , "level 2")
ahmed.absent(1)
ahmed.late(0)
ahmed.add_balance
ahmed.check
khalid = Employee.new("khalid" , "level 3")
khalid.absent(1)
khalid.late(4)
khalid.add_balance
# khalid.check
mohammed = Employee.new("mohammed" , "level 1")
mohammed.absent(16)
mohammed.late(6)
mohammed.add_balance
# mohammed.check