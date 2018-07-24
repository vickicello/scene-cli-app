class Scene::Concert

  attr_accessor :name, :price, :venue, :url, :time, :address, :neighborhood, :phone

  @@all = []

  def initialize(name = nil, price = nil, venue = nil, url = nil)
    @name = name
    @price = price
    @venue = venue
    @url = url
    @@all << self
  end

  def self.all
    @@all
  end

end
