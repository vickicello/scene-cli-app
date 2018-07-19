class Scene::Concert

  attr_accessor :name, :genre, :time, :price, :venue, :address, :neighborhood, :phone

  @@concerts = []


  def self.scrape_concerts
    @concerts = []
    @concerts << self.scrape
     @concerts
  end

  def self.scrape
    doc = Nokogiri::HTML(open(https://www.clevescene.com/cleveland/EventSearch?feature=Concert&narrowByDate=Today))
    concert = self.new
    concert.name = doc.search("").text.strip
    concert.genre = doc.search("").text.strip
    concert.time = doc.search("").text.strip
    concert.price = doc.search("").first.attr("").strip
    concert.venue = doc.search("").text.strip
    concert.address = doc.search("").text.strip
    concert.neighborhood = doc.search("").text.strip
    concert.contact = doc.search("").text.strip
    concert
  end


end
