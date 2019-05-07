class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def self.song_count
    self.songs.collect do |song|
      song
    end
    song.size
  end

end
