require 'pry'

class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
    save
    #binding.pry
    song.artist = self.name if song.artist == nil
  end

  def self.find_or_create_by_name(name)
    if self.all.detect {|i| i.name == name}
      self
    else
      Artist.new(name)
    end
  end

  def print_songs
    self.all.each {|i| puts "#{i.name}"}
  end

end
