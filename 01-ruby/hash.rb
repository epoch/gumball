require 'pry'

song_title = 'Hello'
song_artist = 'Lionel Richie'
song_released = 1983

# song = ['Hello','Lionel Richie',1983]

song1 = { 
  :title => 'Hello', 
  :artist => 'Lionel Richie', 
  :released => 1983
}

song2 = {
  :title => "Nothing's gonna change my love for you", 
  :artist => 'Glenn Medeiros', 
  :released => 1986
}

song3 = {
  title: :a_whole_new_world,
  artist: "disney",
  released: 1992
}

classics = [song1, song2, song3]


# song2 = {
#   0 => 'Hello',
#   1 => 'Lionel Richie',
#   2 => 1983
# }


binding.pry