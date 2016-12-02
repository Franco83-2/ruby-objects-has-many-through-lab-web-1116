require_relative 'artist'
require_relative 'song'

class Genre
  attr_reader :name, :songs

  @@all = []


  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def artists
    self.songs.collect {|song| song.artist}.flatten.uniq
  end

end