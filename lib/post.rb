class Post
  attr_accessor :author, :title 

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    author.name
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
end
