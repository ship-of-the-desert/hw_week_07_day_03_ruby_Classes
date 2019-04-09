class Employee 



    def initialize (name, level)
        @name =name
        @level=level
        
    end
    $balance=0
    $absence = 20
    $count =0
    $abscount=0



    def absent()
       $absence=$absence-1 
       $abscount=$abscount+1
    end



    def late 
        if $count < 3
            $count =$count +1
        elsif $count == 3
            $absence= $absence-1
            $count =0
        end
    end



    def add_balance()
        if @level==1
            if $abscount==0
                $balance=2000
            else
                $balance= 2000 - ($abscount * 66)
            end
        elsif @level ==2
            if $abscount==0
                $balance=4000
            else
                $balance= 4000 - ($abscount * 133)
            end
        elsif @level ==3
            if $abscount==0
                $balance=6000
            else
                $balance= 6000 - ($abscount * 200)
            end
        end
    end



    def check 
        puts " #{@name} in level #{@level} the days left in absence account is #{$absence} 
        and number of times of being late #{$count} and the balance for this month is #{$balance}"
    end
end

    emp = Employee.new('lamyaa', 3)
    emp.late()
    emp.absent()
    emp.late()
    emp.add_balance()
    emp.check()