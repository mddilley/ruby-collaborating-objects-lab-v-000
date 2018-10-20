class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist=(name)
    if (name.artist.nil?)
      new_obj = Artist.find_or_create_by_name(name)
      @artist = new_obj.name
      new_obj.add_song(self)
    else
      self.artist.name = name
    end
    #new_obj.add_song()
    #binding.pry
  end

  def self.new_by_filename(filename)
    filename = filename.split(" - ")
    artist = filename[0]
    song_title = filename[1]
    song = self.new(song_title)
  end

end
