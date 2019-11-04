class Song
attr_accessor :name
attr_reader :artist
@@all = []

def artist=(name)
@artist = name
name.songs << self
end

def initialize(title)
@name  = title
@@all << self
end #end of method

def self.all
@@all
end

def artist_name
if artist
artist.name
else
nil
end #end of if block

end # end of method

end #end of class Song
