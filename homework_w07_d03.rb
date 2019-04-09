class Employee 
    def initialize(name,level)
        @name = name
        @level = level
        @absence =20
        @late = 0
        @balance = 0
    end
    def absent(num)
        @absence = @absence - num
    end
    def late(num)
        num = num1
        @late = @late +num
        until(num1 <= 3)
            if(num1>3)
                @absence = @absence -1
                num1 = num1 -3
            end
        end
    end
    def add_balance 
        if (level == "level1")
             @balance = @balance +2000
            elsif (level == "level2")
                    @balance = @balance +4000
            elsif (level == "level3")
                @balance = @balance +6000
        else 
            @balance = 0 
        end
    @balance = @balance - (20-@absence)*(@balance/ 30)
    end
    def check 
        puts @name
        puts @level
        puts @absence
        puts @late
        puts @balance
    end
end