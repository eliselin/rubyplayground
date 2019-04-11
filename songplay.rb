class Song
#helper method (getter method)
  attr_reader :title, :artist, :filename, :play_count #instance methods
#class variable: set to 0 when the program is loaded
@@total_plays = 0  #class variable
#constructor& attributes 
  def initialize(title, artist, filename)
    @title = title #instance variable
    @artist = artist#instance variable
    @filename = filename#instance variable
    @play_count = 0#instance variable
  end

  def summary #instance methods
    return "#{@title}, by #{@artist}"
  end

  def play #instance methods
    @play_count += 1
    @@total_plays += 1
  end

  # Define a class method to access the class variable
  def self.total_plays
    return @@total_plays
  end

  def self.most_played(song_list)
    most_played = song_list[0]
    song_list.each do |song|
      if song.play_count > most_played.play_count
        most_played = song
      end
    end
    return most_played
  end
  
end

#creating an instance of a class
fifty_ways_to_say_goodbye = Song.new("50 Ways to Say Goodbye", "Train", "songs/50_ways_to_say_goodbye.mp3")

skyfall = Song.new("Skyfall", "Adele", "songs/skyfall.mp3")
heaven = Song.new("Heaven", "Julia Michaels", "songs/heaven.mp3")

3.times do
  skyfall.play
end

5.times do
  heaven.play
end

puts "#{heaven.title}: #{heaven.play_count} plays"
puts "#{skyfall.title}: #{skyfall.play_count} plays"
puts "total: #{Song.total_plays} plays"
top_played_song = Song.most_played([fifty_ways_to_say_goodbye,skyfall,heaven])
puts top_played_song.summary