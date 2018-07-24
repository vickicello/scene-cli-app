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

  def time
    @time ||= doc.css("").text
  end

  def address
    @address ||= doc.css("").text
  end

  def neighborhood
    @neighborhood ||= doc.css("").text
  end

  def phone
    @phone ||= doc.css("").text
  end

end
