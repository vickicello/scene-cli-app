class Scene::Concert

  attr_accessor :name, :genre, :time, :price, :venue, :url, :description, :address, :neighborhood, :phone

  @@all = []


  def initialize(name, genre, time, price, venue, url)
    @name = name
    @genre = genre
    @time = time
    @price = price
    @venue = venue
    @url = url
    @@all << self
  end

  def self.all
    @@all
  end
end
