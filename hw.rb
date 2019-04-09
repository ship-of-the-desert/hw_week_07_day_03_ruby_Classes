class Emplpyee 
    
    def initialize(name , level)
    @name = name 
    @level = level
    @days = 20
    @salary = @salary
    @late = 0
    @absence = 0

    def absence
        @absence = @absence-days
    end 

    def late 
        
        @lates = @lates + days
        if @lates > 3
            @days = @days -1
        end
    end 
    
    def add_balance
        if @level == 1 
            @salary = 2000
        elsif @level == 2 
            @salary = 4000
        elsif @level == 3 
            @salary = 6000
        end

        def chick 
            p " employee name = #{@name}"
            p "level = #{@level}"
            p "the number of days left = #{@absence} "
            p "The  number of times late  #{@late} "
            p "The money balance is = #{@add_balance} "
            p "the salary = #{salary}"
    end 
    end 
    
    
    end 
end 

munera = munera.new("munera" , "level3")
munera.late(0)
munera.check)
munera.absenc(1)
