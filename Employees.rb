class Employee
    def initialize(name, level)
        @name= name
        @level= level
        @absence= 20
        @late= 0
        @balance= 0
    end

    def absent
       @absence= @absence-1 
    end

    def late
        @late= @late + 1
        if @late==3
            @late= 0
            absent
        end
    end

    def add_balance
        if @level == 1
            @balance= @balance+2000
            if @absence != 20
                @balance= @balance- ((2000/30)*(20-@absence))
            end
        elsif @level == 2
            @balance= @balance+4000
            if @absence != 20
                @balance= @balance- ((4000/30)*(20-@absence))
            end
        else @level ==3
            @balance= @balance+6000
            if @absence != 20
                @balance= @balance- ((4000/30)*(20-@absence))
            end
        end
    end

    def check
        puts "Employee name: #{@name}"
        puts "Employee level: #{@level}"
        puts "Employee absence: #{@absence}"
        puts "Employee late: #{@late}"
        puts "Employee balance: #{@balance}"
    end
end

employee1= Employee.new("One", 1)
employee1.absent
employee1.absent
employee1.late
employee1.late
employee1.late
employee1.add_balance
employee1.check

employee2= Employee.new("Two", 2)
employee2.add_balance
employee2.check

employee3= Employee.new("Three", 3)
employee3.absent
employee3.check