# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [by myself].


# Pseudocode

=begin
Create 2 classes: Song, Playlist
add methods initialize, play  to class song
add methods initialize, display, play_all, remove, add, num_of_tracks, includes
=end



# Initial Solution

=begin
class Song
	def initialize (song, artist)
		@song = song
		@artist = artist
	end

	def play
		
	end
end

class Playlist
	attr_reader :my_playlist
	@num_of_tracks = 0

	def initialize (song1, song2, song3)
		@my_playlist = [song1, song2, song3]
		@num_of_tracks = 3
	end	

	def display

	end

	def play_all
		p @my_playlist.each{|song, artist| 
			puts @song 
			puts @artist
		}
	end

	def add (song1, song2)
		@my_playlist << song1
		@my_playlist << song2
		@num_of_tracks += 2
	end
	def num_of_tracks
		@num_of_tracks
	end

	def remove (song)
		@my_playlist.delete(song)

	end 

	def includes?(song)
		@my_playlist.include?(song)
	end
end
=end

# Refactored Solution


class Song
	attr_reader :song
	attr_reader :artist
	def initialize (song, artist)
		@song = song
		@artist = artist
	end

	def play
		puts "Playing #{self.song}"
	end
end

class Playlist
	attr_reader :my_playlist
	num_of_tracks = 0

	def initialize (song1, song2, song3)
		@my_playlist = [song1, song2, song3]
		@num_of_tracks = 3
	end	

	def display
		p "Your playlist includes"
		p @my_playlist.each{|song| 
			puts  "  - Song: " + song.song+ "  Artist: "  + song.artist
		}
	end

	def play_all
		p "Playing all songs"
		
	end

	def add (song1, song2)
		@my_playlist << song1
		@my_playlist << song2
		@num_of_tracks += 2
	end
	def num_of_tracks
		p "You have " + @num_of_tracks.to_s + " track in this playlist."
	end

	def remove (song)
		@my_playlist.delete(song)

		p "Deleteing " + song.song + " from playlist."

	end 

	def includes?(song)
		@my_playlist.include?(song)
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
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display

# Reflection 
=begin
This challenge was good. I beleive there are ways to make my code more agile such as for the add method
I should be able to add any number of arguments to the parameter and increase the num_of_tracks total. 
Instead of hard coding it like i did. If I have time I will come back to it. I had a little trouble with 
my thought process about handling objects inside a different class. I had to really think about what I was 
actually doing. I feel confident in the learning competencies of this challenge.
=end

