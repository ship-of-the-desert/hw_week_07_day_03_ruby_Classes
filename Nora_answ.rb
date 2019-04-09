

class Employee

    attr_reader :absence ,:lates , :salary, :total_lates
    attr_accessor :name , :level

    def initialize(name,level)
        @name = name
        @level = level
        @absence = 20
        @lates = 0
        @salary = 0
        @total_lates = 0
    end
    
    def absent(days)
        if days > 0
        @absence = @absence - days
        end
    end

    def late(days)
        @total_lates = @total_lates + days
        @lates = @lates + days
        if(@lates > 3)
            @lates = @lates - 3
            self.absent(1)
            self.late(0)
        end 
    end
    def add_balance
        if @level == 1 
            @salary = @salary + 2000 - ((20 - @absence) * (2000 / 30 ))
        elsif @level == 2 
            @salary = @salary + 4000 - ((20 - @absence) * (4000 / 30 ))
        elsif @level == 3 
            @salary = @salary + 6000 - ((20 - @absence) * (6000 / 30 ))
        end
        
    end 
    def check
        puts "Employee's name #{@name}\nLevel #{@level} 
Days left in your absence account #{@absence}
Total lates #{@total_lates}
Your balance #{@salary} riyals"
    end 
end



me = Employee.new("Nora",2)
me.late(2)
me.absent(3)
me.add_balance
me.late(5)
me.late(4)
me.add_balance
me.check