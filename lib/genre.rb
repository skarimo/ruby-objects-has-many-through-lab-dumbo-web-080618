class Genre
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select{|song| song.genre == self}
  end

  def new_song(name, artist)
    Song.new(name, artist, self)
  end

  def artists
    self.songs.map do |song|
      song.artist
    end
  end

end
