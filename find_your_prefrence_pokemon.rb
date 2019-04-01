# define method to find out your favorate desert 

def find_your_preference(array)
  highest_score = -99999999
  lowest_score = 999999999
  @favorite_item = " "
  @less_favorite_item = " "

  item_to_score = Hash.new{item_to_score[item]=0}
  # promp user's response
  array.each do |item|
    puts "Sacle of 0 to 10, how much do you like #{item}?"
    score = gets.chomp.to_i
        item_to_score[item] =score
  end
  #favorite_item 
  item_to_score.each do |item,score|
    if  highest_score < score
        highest_score = score
        @favorite_item = item
    end 
  end
  #less_favorite_item
  item_to_score.each do |item,score|
    if lowest_score > score
       lowest_score = score
       @less_favorite_item = item
    end 
  end

 return

end

pokemon = find_your_preference(["Jigglypuff","Vilepume","Slowbro"])

puts "Sounds like you're a big fan of #{@favorite_item}!"
puts "Sounds like you're not that into #{@less_favorite_item}!"