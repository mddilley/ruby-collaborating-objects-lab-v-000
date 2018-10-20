class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    # This method will:
    # 1. Store the Song object passed in to the method in @songs array
    @songs << song
  end

  def self.all
    # This method:
    # 1. Exposes the value of @@all
    @@all
  end

  def save
    # This method will:
    # 1. Add artist instance to @@all
    @@all << self
  end

end
