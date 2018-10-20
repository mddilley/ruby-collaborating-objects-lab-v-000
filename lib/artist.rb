class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    # This method will:
    # 1. Store the Song object passed in to the method in @songs array
    @songs << song
  end

end
