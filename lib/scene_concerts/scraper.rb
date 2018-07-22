class Scene::Scraper

URL = "https://www.clevescene.com/cleveland/EventSearch?feature=Concert&narrowByDate=Today"

puts "I am a walrus!"

  def self.scrape_concerts
    doc = Nokogiri::HTML(open(URL))
    doc.css("").each do |concert|
      name = concert.css("").text.strip
      genre = doc.search("").text.strip
      time = doc.search("").text.strip
      price = doc.search("").first.attr("").strip
      venue = doc.search("").text.strip
      url = concert.css('.item-title a').attribute('href').value
      Scene::Concert.new(name, genre, time, price, url)
    end
  end

  def self.scrape_details(concert)
    url = concert.url
    doc = Nokogiri::HTML(open(url))
    concert.description = doc.css("").text.strip
    concert.address = doc.css("").text.strip
    concert.neighborhood = doc.css("").text
    concert.phone = doc.css("").text.strip
  end
end
