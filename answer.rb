class Employee
    def initialize (name, level)
        @name = name
        @level = level
        @avaliable_absences = 20
        @late_counter = 0
        @late_total = 0
        @money = 0
    end

    def absent(days)
        @avaliable_absences = @avaliable_absences - days
    end

    def late
        @late_counter = @late_counter + 1
        if @late_counter == 3
            @avaliable_absences = @avaliable_absences - 1
            @late_counter = 0
        end
        @late_total = @late_total + 1
    end

    def add_balance
        if level == 1
            @money = @money + 2000 + ((2000/30)*(@avaliable_absences-20))
        elsif level == 2
            @money = @money + 4000 + ((4000/30)*(@avaliable_absences-20))
        elsif level == 3
            @money = @money + 6000 + ((6000/30)*(@avaliable_absences-20))
        end
    end

    def check 
        p "#{@name}, their level is #{@level}, they have #{@avaliable_absences} absences left, they were late #{@late_total} days, ans their balance is #{@money} "
    end
end

Employee.new("Aziz",1).check
