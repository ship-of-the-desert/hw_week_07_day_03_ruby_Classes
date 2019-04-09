class Employee

    def initialize(name,level)
@name = name
@level = level
@salry = 0
@absence = 20
@late = 0
    end

    def absent(count)
       @absence = @absence - count
    end 

def late
    @late += 1
if @late == 3
    @absence  - 1
end

end 

def add_balance
   
if @level == 1
    @salry = 2000 

    elsif @level == 2
     @salry = 4000 

    elsif @level == 3
            @salry =  6000 
    else 
        @salry = 0

end
@salry = @salry - ((20 - @absence ) * (@salry/30))
p @salry
 end

end 

employee = Employee.new("sarah",1)
employee.absent(2)
employee.add_balance
