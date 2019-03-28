"""
Ruby        
Welcome to Crystal's Walk-A-Thon Tracker
Our goal is to raise money!

Enter the earning goal for this event > ~500~
Enter the amount earned per lap (per person) > ~2.50~

Please enter the number of laps completed by each person.
Walker #1 > ~10~
          --> Earned $25.0
Walker #2 > ~11~
          --> Earned $27.5
Walker #3 > ~50~
          --> Earned $125.0
Walker #4 > ~20~
          --> Earned $50.0
Walker #5 > ~22~
          --> Earned $55.0

========================================
Highest Earning Walker: #3
Total amount earned: $282.5
Goal Met? NO :-(

"""
class Walk_A_Ton_Tracker

    def initialize()
        puts "Welcome to Crystal's Walk-A-Thon Tracker\nOur goal is to raise money!\nEnter the earning goal for this event >\n"

        @goal = gets.chomp.to_f
        @number_of_walker = 5
        puts "Please enter the number of laps completed by each person and amount per lap walked"
        @total_amount_earned = 0
        @record = Hash.new { |walker, earning| record[walker] = earning }
    end

    def promt_walker_lap()
        for i in 1..@number_of_walker
            puts "Walker#{i} >"
            laps = gets.chomp.to_f
            puts "Perlap >"
            perlap = gets.chomp.to_f
            earning = laps * perlap
            puts "Earning $#{earning}"
            @record["walker#{i}"] =earning
            @total_amount_earned += earning
        end
    end
    
    def summary()
        #higest earning walker
        higest_earning = -99999999999
        highest_earning_walker = " "
        @record.each do|walker, earning|
            if higest_earning <= earning
             higest_earning = earning 
             higest_earning_walker = walker
            end
        end

        #puts total earning
        puts "Total amount earned: $#{@total_amount_earned}"
        #by how much the goal was missed by or was beaten by
        if @total_amount_earned > @goal 
            puts "The goal was beaten by $#{@total_amount_earned-@goal}"
        elsif @goal > @total_amount_earned 
            puts "The goal was missed by $#{@goal-@total_amount_earned}"
        else
            puts "The goal was equal to the total earning!"
        end
    end
end

run = Walk_A_Ton_Tracker.new
run.promt_walker_lap()
run.summary()


