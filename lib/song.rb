class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  #class constructor create, initializes and saves song to @@all
  def self.create
    song = self.new
    @@all << song
    song
  end
  #class constructor new_by_name takes string of song and returns instance with
  #name as property
  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  #instantiate and saves a song with a name property
  def self.create_by_name(song_name)
    song = self.create
    song.name = song_name
    song
  end

  #find a song present in @@all
  def self.find_by_name(song_name)
    self.all.detect {|song| song.name == song_name}
  end

  #find_or_create_by_name combine both. returns existing song object without creating a new one
  #creates new if title doesn't exist
  def self.find_or_create_by_name(song_name)
    if self.find_by_name(song_name) == nil
      self.create_by_name(song_name)
    else
      self.all.detect {|song| song.name == song_name}
    end
  end
  #returns alphabetical order of songs
  def self.alphabetical
    self.all.sort_by{|song| song.name}
  end

  #initialiazes a song and artist_name based on filename format
  def new_from_filename(mp3)

  end

  def create_from_filename(mp3)

  end



  #detroys all the songs
  def self.destroy_all
    @@all.clear
  end

end
