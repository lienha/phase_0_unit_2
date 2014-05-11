# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge by myself.


# Pseudocode
# create a class Song
# create an initialize method that takes 2 arguments: song and artist.
# define method play & return a string playing the song.
# creat a Playlist class
# create an initialize method that takes a splat argument songs.
# define method add that takes a splat argument songs.
# define method num_of_tracks to return the size of the playlist.
# define remove method that takes an argument song and delete it.
# define inclules? method that check to see if the song in the playlist.
# define play_all method that return a string showing all the songs playing.
# define display method that shows all the songs in the playlist.

# Initial Solution
class Song
  attr_reader :song, :artist
  def initialize(song, artist)
    @song = song
    @artist = artist
  end
  
  def play
    "#{song} by #{artist} is now playing..."
  end
end

class Playlist
  attr_accessor :playlist

  def initialize(*songs)
    @playlist = songs
  end

  def add(*songs)
    songs.each do|track| 
      playlist << track
      puts "#{track.song} is added."
    end
  end

  def num_of_tracks
    playlist.size
  end

  def remove(track)
    playlist.delete(track)
    puts "#{track.song} is removed."
  end

  def includes?(track)
    playlist.include?(track)
  end

  def play_all
    puts "Playing all songs:" 
    playlist.each { |track| puts track.play }
  end

  def display
    puts "Songs in playlist:"
    playlist.each { |track| puts track.song }
  end
end 


# Refactored Solution
class Song
  attr_reader :song, :artist
  def initialize(song, artist)
    @song = song
    @artist = artist
  end
  
  def play
    "#{song} by #{artist} is now playing..."
  end
end

class Playlist
  attr_accessor :playlist

  def initialize(*songs)
    @playlist = songs
  end

  def add(*songs)
    songs.each do|track| 
      playlist << track
      puts "#{track.song} is added."
    end
  end

  def num_of_tracks
    playlist.size
  end

  def remove(track)
    playlist.delete(track) ? includes?(track) : "Song is not in playlist"
    puts "#{track.song} is removed."
  end

  def includes?(track)
    playlist.include?(track)
  end

  def play_all
    puts "Playing all songs:" 
    playlist.each { |track| puts track.play }
  end

  def display
    puts "Songs in playlist:"
    playlist.each { |track| puts track.song }
  end
end 


# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
p going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display

# Reflection 
# I orginally make attr_accessor for playlist because I would add more songs. 
# In refactoring, I changed it to attr_reader and surprisingly found the code passed. 
# Later I learned that as long as I didn't modified the songs, attr_reader worked just as well.
# The method play under Song class is also accessible through Playlist class because it was called
# by the object created in Song class.
