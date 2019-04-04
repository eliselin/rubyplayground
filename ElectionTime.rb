class ElectionTime 
  def initialize()
    puts "Welcome to my election voting program.\nElection candidates are : Donald Duck, Minnie Mouse, Goofy\n Please enter the total votes for this election "
    @total_votes = gets.chomp.to_i
    @vote_result = Hash.new {|h,k| h[k] = 0}
  end

  def vote()
    i=1
      @total_votes.times do 
        print "vote # #{i}:"
        i+=1
        candidate=gets.chomp.downcase

        case candidate 
          when'donald duck'
            @vote_result["donald duck"] += 1  
          when'minnie mouse'
            @vote_result["minnie mouse"] += 1 
          when'goofy'
            @vote_result["goofy"] += 1 
          when''          
            @vote_result["void ballot"] += 1
          else 
            @vote_result["null vote"] += 1
          end
      end
  end

  def winner(candidate_list)
   highest_vote = 0
   winner = ""
    candidate_list.each do |candidate|
      if @vote_result[candidate] > highest_vote
        highest_vote = @vote_result[candidate]
        winner = candidate
      end
    end
  return "#{@vote_result}, The winner of this election is #{winner}"
  end
end

e = ElectionTime.new
e.vote
puts e.winner(["donald duck","minnie mouse","goofy"])