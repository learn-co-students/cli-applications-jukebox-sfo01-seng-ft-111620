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
  puts  "I accept the following commands:"
  puts  "- help : displays this help message"
  puts  "- list : displays a list of songs you can play"
  puts  "- play : lets you choose a song to play"
  puts  "- exit : exits this program"
end 

def list(songs)
  count = 1
  songs.each do |song|
    number = count.to_s + ". "
    puts number + song
    count += 1 
  end 
end   

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  song_name = songs.find {|song| song == input}
  
  if song_name
    puts "Playing #{song_name}"
  elsif input.to_i > 0 && input.to_i < 10
    puts "Playing #{songs[input.to_i - 1]}"
  else 
    puts "Invalid input, please try again"
  end 
end   

def exit_jukebox
  puts "Goodbye"
end 

def run(songs) 

  loop do
    puts "Please enter a command:"
    command = gets.strip
    case command
      when "exit"
        exit_jukebox
        break
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "help"
        help 
    end 
  end 
end 
  
    
  
  
    