class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name

  end

  def artist=(name)
    # This method will:
    # 1. Turn artist string passed in this method into an Artist object
    # 2. New Artist object will be assigned to @artist
    @artist = Artist.find_or_create_by_name(name)
    # 3. Assign this song instance to the songs in the artist object
        
  end

  def self.new_by_filename(file_name)
    # This method will:
    # 1. Parse the file name
    parsed_filename = file_name.split(" - ")
  end

end
