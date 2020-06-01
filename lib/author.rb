# class Author
#
#   attr_accessor :name, :post
#
#   def initialize(name)
#     @name = name
#     @posts = []
#   end
#
#   def posts
#     Post.all.select {|post| post.author == self}
#   end
#
#   def add_post(post)
#     @posts << post
#     post.author = self
#   end
#
#   def add_post_by_title(post_title)
#   writer = Post.new(post_title)
#     add_post(post)
#   end
#
# end

class Author
  attr_accessor :name
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end

end 
