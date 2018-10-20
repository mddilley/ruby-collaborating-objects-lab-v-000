class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name

  end

  def artist=(name)
    @artist = Artist.find_or_create_by_name(name)
    @artist.add_song(self)
  end

end
