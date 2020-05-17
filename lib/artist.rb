require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  extend Memorable
  extend Findable
  include Paramable

  @@artists = []

  def initialize
    @@artists << self
    @songs = []
  end



  def self.all
    @@artists
  end
=begin
  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end
=end
  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end


end
