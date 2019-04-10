class Employee
    def initialize(name,level)
        @name=name 
        @level=level
        @absence_account = 20 
        @late_counter = 0
        @money = 0 
        @s_wage = 0 #single day wage
    end

    def absent(days)
        @absence_account = @absence_account - days
    end
    def late
        @late_counter = @late_counter + 1
        if @late_counter == 3
            @absence_account = @absence_account - 1
        end
    end    
    def add_balance 
        # @salary =salary
        
        if @level == 1
            @money= @money+ 2000 
            
        elsif @level == 2
            @money= @money+ 4000
            
        elsif @level == 3
            @money= @money+ 6000
            
        end
        @s_wage = @money /30 
        if @absence_account < 20 
            @money = @money - ( @s_wage *(20 - @absence_account))
        end
    end
    def check
    puts "Employee's Name: #{@name} Level #{@level} Number of days left in absence account is #{@absence_account} days ..Number of late times is #{@late_counter} and mony balance is #{@money} Riyals"
    end
end

noura = Employee.new('Noura',3)
noura.absent(6)
noura.add_balance
noura.late
noura.check

