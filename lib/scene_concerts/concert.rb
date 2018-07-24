class Scene::Concert

  attr_accessor :name, :price, :venue, :url, :time, :description, :address, :neighborhood, :phone

  @@all = []

puts "I am the conert file!"
  def initialize(name, price, venue, url)
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
