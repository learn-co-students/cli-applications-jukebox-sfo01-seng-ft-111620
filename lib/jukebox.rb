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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |song, idx| puts "#{idx + 1}. #{song}" }
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  songs.each_with_index do |song, idx|
    if input.to_i == (idx + 1) || song == input
      puts "Playing #{song}"
      return "Playing #{song}"
    end
  end
  puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end

def start 
  puts "Please enter a command:"
end

def run(songs)
  start
  while input = gets.strip do
    if input == "exit"
      exit_jukebox
      break
    elsif input == "list"
      list(songs)
      start
    elsif input == "play"
      play(songs)
      start
    elsif input == "help"
      help
      start
    end
  end
end



