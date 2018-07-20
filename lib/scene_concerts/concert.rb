class Scene::Concert

  attr_accessor :name, :genre, :time, :price, :url, :venue, :address, :neighborhood, :phone

  @@all = []


  def initialize(name, genre, time, price, url)
    @name = name
    @genre = genre
    @time = time
    @price = price
    @url = url
    @@all << self
  end

  def self.all
    @@all
  end
end
