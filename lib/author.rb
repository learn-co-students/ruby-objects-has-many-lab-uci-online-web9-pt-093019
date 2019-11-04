class Author
attr_accessor :name
attr_reader :posts
@@authors = []

def posts=(post)
posts << post
end

def initialize(name)
  @name = name
  @posts = []
  @@authors << self
end

def add_post(post)
post.author = self
end

def add_post_by_title(title)
add_post(Post.new(title))
end

def self.post_count
count = 0
@@authors.each {|author| count += author.posts.size}
count
end

end # end of class Author
