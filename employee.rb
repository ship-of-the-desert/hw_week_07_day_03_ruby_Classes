class Employee 
    def initialize(name,level)
        @name = name
        @level = level
        @absent1 = 20
        @late_counter = 0
        @money_balance = 0
    end 
def absent(n) 
    @absent1 = @absent1 - n

end 

def late(l)
       @late_counter = @late_counter + l
       while  @late_counter > 3     # stores the number of times the employee was late to their late counter
      @absent1 = @absent1 - 1
      @late_counter = @late_counter - 3
    end 
    end 
    def add_balance
            #  adds salary to the o the @money_balance
        if @level == "level1"
            @money_balance = @money_balance + 2000 - (2000 / 30) * (20 - @absent1)
        end 
        if @level == "level2"
            @money_balance = @money_balance + 4000 - (4000 / 30) * (20 - @absent1)

        end 
        if @level == "level3"
            @money_balance = @money_balance + 6000 - (6000 / 30) * (20 - @absent1)
        end 

    end 
    def check 
        p @name
        p @level
        p @absent1
        p @late_counter
        p @money_balance

    end 
end 
employee = Employee.new("mohammed","level1")
employee.add_balance
employee.absent(0)
employee.late(10)
employee.check







# Initiate each Employee with their name, and level ///
# Each Employee starts with 20 days in their absence account.///
# Create an absent method that subtracts the number of days from @vacation ///
# Create a late method that stores the number of times the employee was late to their late counter ///
# Make every 3 lates count as 1 absence ///
# Each Employee starts with a 0 money balance///
# Create an add_balance method that adds salary money to the Employee's balance///
# Employee's salaries depends on their level:
# A level 1 employee salary is 2000 riyals
# A level 2 employee salary is 4000 riyals
# A level 3 employee salary is 6000 riyals
# The add_balance method should subtract a single day's wage for every day where the employee was absent
# A single day's wage is the salary divided by 30
# Create a check method that shows the employee's name, level, number of days left in their absence account, number of times they were late, and their balance.