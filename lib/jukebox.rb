require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]


def help

	puts "- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end


def list(song_array)
	song_array.each_with_index do |songs, val|
		val = val + 1
		puts "#{val.to_s}. #{songs}"
	end
end




def play(song_array)
	binding.pry
	puts "Please enter a song name or number:"
	user_song = gets.chomp
	if song_array.include?(user_song)
		puts "Playing #{user_song}"
	elsif user_song.is_a?(Fixnum)
		song_array.each_with_index do |songs, val|
			val = val + 1
			if user_song == val
				val == val - 1
				puts "Playing #{song_array[val]}"
			end
		end
		puts "Invalid input, please try again"
	end
end


def exit_jukebox
	puts "Goodbye"
end

def run(songs_array)
	help
	puts "Please enter a command:"
	command = gets.chomp

	if command == "help"
		help
	elsif command == "list"
		list(songs_array)
	elsif command == "play"
		play(songs_array)
	elsif command == "exit"
		exit_jukebox
	else
		run(songs_array)
	end
end


play(songs)












