require_relative 'genre'
require_relative 'song'

class Artist
  attr_reader :name, :songs

@@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def genres
    self.songs.collect {|song| song.genre}.flatten.uniq
  end






end
