require_relative 'artist'
require_relative 'genre'
class Song
  attr_accessor :artist
  attr_reader :name, :genre
  @@all = []

  def initialize(name, genre)
    @name = name
    @artist = []
    @genre = genre
    @@all << self
    genre.songs << self
  end

end