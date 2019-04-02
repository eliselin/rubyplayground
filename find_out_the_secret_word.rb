# find out the secret word

def secret_word()
  secret_word = "happy"
  guess = ""
  guess_count = 0 
  guess_limit = 5 
  out_of_guess = false
  puts "Please Guess the Secret Word within #{guess_limit} Attempt :/n Hint: the secret word has 5 characters."

  while secret_word != guess && !out_of_guess
      if  guess_count < guess_limit
        puts "#{guess_count+1} Guess :"
        guess = gets.chomp()
        guess_count +=1
      else 
       out_of_guess = true
      end
  end

  if out_of_guess 
    puts "You lose!"
  else
    puts "You Won !!"
  end

end
return secret_word()