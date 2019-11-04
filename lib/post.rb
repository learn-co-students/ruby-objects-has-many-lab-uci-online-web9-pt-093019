class Post
attr_accessor :title
attr_reader :author
@@all = []

def author=(name)
@author = name
name.posts << self
end

def self.all
  @@all
end

def initialize(title)
@title = title
@@all << self
end #end of initialize method

def author_name
if author
author.name
else
nil
end #end of if block

end # end of method


end #end of class Post
