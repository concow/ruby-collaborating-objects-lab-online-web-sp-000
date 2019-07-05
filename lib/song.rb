require 'pry'
class Song
  attr_accessor :name

  def initialize(name)
    @name = name
  end
  #sets the artist object to belong to the song
  def self.new_by_filename(filename)
    song_name = file.split(" - ")[1]
    artist = file.split(" - ")[0]
    song = self.new(song_name)
    song.artist.name = artist
    return song
  end
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    #binding.pry
    self.artist.add_song(self)
  end

end
