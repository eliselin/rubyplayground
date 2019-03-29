class NumberGame

@numer_enter = 0

  def initialize()
    @integer_user_input_array= Array.new
		puts "Let's play a numbers game.\nHow many numbers would you like to enter?"
		@numer_enter=gets.chomp.to_i
  end

  def promp_user
      for i in 1..@numer_enter

      puts "Enter the #{i} positive integer:"
      @integer_user_input_array.push(gets.chomp.to_i)

      end 
  end

  def compare_summary

		#compare with last index number
		puts "Comparing to the last value entered,#{@integer_user_input_array[-1]} , here are the observations:"
		 #summary
			i=0
			@integer_user_input_array.each do |num|	
				if 	num < @integer_user_input_array[-1]

				puts "The value at index #{i}, #{@integer_user_input_array[i]}is less than value at the last index, #{@integer_user_input_array[-1]}"

				elsif num > @integer_user_input_array[-1]

				puts "The value at index #{i}, #{@integer_user_input_array[i]}is greater than value at the last index, #{@integer_user_input_array[-1]}"

				else

				puts "The value at index #{i}, #{@integer_user_input_array[i]} is equal to the value at the last index, #{@integer_user_input_array[-1]}"
				end
				i+=1
			end 

    	#min
    	min_num=1000000000
		 	@integer_user_input_array.each do |num|	
		 		if min_num >= num
		 		   min_num = num
        end
		 	end

		 #max
      	max_num=-999999
		 	@integer_user_input_array.each do |num|	
		 	 	if max_num <= num
		 	 	   max_num = num		
        end
		 	end
		 #average	
      	total=0	 	
		 	@integer_user_input_array.each do |num|	
		  total+=num
		 	end
		 	average_num = total/@numer_enter/1.0

    	puts "minimum value in the array is #{min_num}. The maximum value in the array is #{max_num}. The average of all the values in the array is #{average_num}"

	end
  
end
user = NumberGame.new
user.promp_user
user.compare_summary
