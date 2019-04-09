

class Employee

def initialize(name,level)
    @name=name
    @level=level
    @absence_Count=20 #absence account.
    @late_counter=0 #count late
    @balance=0 #salary
end 

def absent(day)
    @absence_Count=@absence_Count-day # decrese number of absent from total absence account.
end

def late
    @late_counter+=1#increase late by 1
    if @late_counter==3 # to count each 3 late times as 1 absent 
        @absence_Count-=1# decrese 1 from total absence account.
    end
end

def add_balance
    if @level=="1" 
        @balance= 2000 #total salary without discount
        @single_day_salary=@balance/30 #salary of single day per month
        if @absence_Count < 20 #test if the emplyee already absent
           @balance=@balance-((20-@absence_Count) * @single_day_salary) #total salary after dicount number of absent
        end 
    elsif @level =="2"
        @balance=4000
        @single_day_salary=@balance/30
        if @absence_Count < 20
            @balance=@balance-((20-@absence_Count) * @single_day_salary)
        end 
    else
        @balance=6000
        @single_day_salary=@balance/30
        if @absence_Count < 20
            @balance=@balance-((20-@absence_Count) * @single_day_salary)
                    end 
    end
end

def check
    puts "Employee Information:
    Name: #{@name}
    Level: #{@level}
    Remains absent account: #{@absence_Count} / 20
    Number of late : #{@late_counter}
    Salary: #{@balance}"
end 

end 

employee1=Employee.new("ABC","1")
employee1.absent(1)
employee1.late
employee1.add_balance
employee1.check

employee2=Employee.new("Amani","2")
employee2.absent(1)
employee2.add_balance

employee3=Employee.new("Amani","3")
employee3.absent(2)
employee3.late
employee3.late
employee3.late
employee3.add_balance
employee3.check