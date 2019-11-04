class Artist
attr_accessor :name
attr_reader :songs
@@artists = []


def songs=(name)
songs << name
end


def initialize(name)
  @name = name
  @songs = []
  @@artists << self
end


def add_song(song)
song.artist = self
end

def add_song_by_name(name)
add_song(Song.new(name))
end

def self.song_count
song_count = 0
@@artists.each {|artist| song_count += artist.songs.size}
song_count
end

end # end of class Artist
