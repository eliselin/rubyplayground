class MovieEditor 

@ moviesmovies = {
  Memento: 3,
  Primer: 4,
  Ishtar: 1
}

def initialize()
puts "-- Type 'add' to add a movie.\n -- Type 'update' to update a movie.\n-- Type 'display' to display all movies.\n-- Type 'delete' to delete a movie."
choice =gets.chomp.downcase
end


def option

	case choice

		when 'add'
			puts "What movie do you want to add?"
			title = gets.chomp.downcase
			if  @movies[title.to_sym].nil?
				puts "What's the rating? (Type a number 0 to 4.)"
				rating =gets.chomp.to_i
				@movies[title.to_sym] = rating.to_i
				puts "#{title} has been added with a rating of #{rating}."
			else 
				puts "That movie already exists! Its rating is #{@movies[title.to_sym]}."
			end

		when 'update'
			puts "What movie do you want to update?"
			title = gets.chomp.downcase
			if @movies[title.to_sym].nil?
				"Movie not found!"
			else
				puts "What's the new rating? (Type a number 0 to 4.)"
			    rating = gets.chomp
			    @movies[title.to_sym] = rating.to_i
			    puts "#{title} has been updated with new rating of #{rating}."
			 end

		when 'display'
			@movies.each do| tilte, rating|
				puts " #{title} : #{rating}"

		when 'delete'
			title = gets.chomp.downcase
			puts "What movie do you want to delete?"
			if @movies[title.to_sym].nil?
				"Movie not found!"
			else
    		movies.delete(title.to_sym)# important 
    		puts "#{title} has been removed."
    	else
    		puts "Sorry, I didn't understand you."

end

end



