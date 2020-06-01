# class Artist
#
#   attr_accessor :name
#
#   def initialize(name)
#     @name = name
#     @songs = []
#   end
#
#   def songs
#     Song.all.select {|song| song.artist == self}
#   end
#
#   def add_song(song)
#     @songs << song
#     song.artist = self
#   end
#
#   def add_song_by_name(song_name)
#   singer = Song.new(song_name)
#     add_song(singer)
#   end
#
#   def self.song_count
#     Song.all.count
#   end
#
#
# end

class Artist
  attr_accessor :name
  @@song_count = 0
  def initialize(name)
    @name = name
    @songs = [] #empty collection of songs
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

end 
