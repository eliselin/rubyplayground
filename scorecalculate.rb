class ScoreCalculate

  def initialize()
    @score_array = ["Bob,97", "Charles,80", "Bob,50","Charles,90","Amy,80"]
    @name_to_score = Hash.new { |hash, key| hash[key] = 0 }
    @name_to_count = Hash.new { |hash, key| hash[key] = 0 }
    @name_to_avg_score = Hash.new { |hash, key| hash[key] = 0 }
    @score_array.each do|record|
      name, score = record.split(",")
      @name_to_score[name] += score.to_i
      @name_to_count[name] += 1
    end
    @name_to_score.each do|name,score|
      avg = score / @name_to_count[name]
      @name_to_avg_score[name] = avg
    end
  end

  def summary()
    #display all average
    puts @name_to_avg_score
    #max average score
    max_avg = -9999999999
    max_avg_name = " "
    @name_to_avg_score.each do|name, avg|
      if max_avg <= avg
        max_avg = avg
        max_avg_name = name
      end
    end
    puts "#{max_avg_name} is the person with max average score #{max_avg}"
  end
end

int = ScoreCalculate.new
int.summary()
