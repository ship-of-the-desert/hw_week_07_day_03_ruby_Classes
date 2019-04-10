class Employee 
    # attr_accessor :name
    # attr_accessor :level
    # attr_accessor :money_balance
    # attr_reader  :absence_account , :single_day_wage 
    def initialize (name, level)
        @name=name
        @level=level
        @money_balance = 0
        @lates_count = 0
        @absence_account = 20
        @single_day_wage = 0
        @late_day=0
    end
    def absent
        @absence_account = @absence_account - 1
        # @absent_day =  @absent_day  + 1
    end
    def late
        @late_day= @late_day + 1
        @lates_count =  @lates_count + 1
        if @lates_count == 3
            @absence_account = @absence_account - 1
            @lates_count = 0
            # @vac_days = @vac_days - 1
            end
    end
    def add_balance
        if @level == 1
            @money_balance = 2000
        elsif @level == 2
            @money_balance = 4000
        elsif @level == 3
            @money_balance = 6000
        end
        @single_day_wage = @money_balance / 30
        @money_balance = @money_balance - (@single_day_wage * (20 - @absence_account))
        # money_balance = salary - (single_day_wage * @absent_day)
    end
    def check
        # check method that shows the employee's name, level, number of days left in their absence account, number of times they were late, and their balance
    p "The employee name is : #{@name}"
    p "The level is : #{@level}"
    p "The number of days left in his absence account : #{@absence_account} days"
    p "The number of times he was late : #{@late_day} times"
    p "The money balance is : #{@money_balance} SR"
    end
end

ameerah = Employee.new("Ameerah",3)
ameerah.absent
ameerah.add_balance
ameerah.check

saad = Employee.new("Saad",2)
saad.late
saad.add_balance
saad.check

sama=Employee.new("Sama", 1)
sama.late
sama.late
sama.late
sama.add_balance
sama.check
