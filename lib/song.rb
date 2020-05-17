require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable
  extend Findable

  @@songs = []

  def initialize
    @@songs << self
  end



  def self.all
    @@songs
  end
=begin
  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end
=end
  def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
end
