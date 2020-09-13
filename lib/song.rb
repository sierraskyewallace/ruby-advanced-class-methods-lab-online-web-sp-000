class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create 
    song = self.new 
    self.all << song 
    song
  end
  def self.new_by_name(title)
     song = self.new 
     song.name = title
     song
   end
  def self.create_by_name(title)
    song = self.create 
    song.name = title
    song
  end
  def self.find_by_name(name)
    @@all.find {|song| song.name == name}
  end
  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end
  def self.alphabetical
    self.all.sort_by{|song| song.name}
  end
  def self.new_from_filename(filename)
    data = filename.split(" - ")
    artist_name = data[0]
    song_name = data[1].chomp(".mp3")
    
    song = self.new 
    song.name = song_name
    song.artist_name = aartist_name
    song
  end
  end
end
