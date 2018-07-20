class Scene::Scraper

URL = "https://www.clevescene.com/cleveland/EventSearch?feature=Concert&narrowByDate=Today"

  def self.scrape_concerts
    doc = Nokogiri::HTML(open(URL))
    doc.css("").each do |concert|
      name = concert.css("").text.strip
      genre = doc.search("").text.strip
      time = doc.search("").text.strip
      price = doc.search("").first.attr("").strip
      # url = concert.css('.item-title a').attribute('href').value
      address = doc.search("").text.strip
      neighborhood = doc.search("").text.strip
      contact = doc.search("").text.strip
      Scene::Concert.new(name, genre, time, price, url)
    end
  end

  def self.scrape_details(concert)
    url = concert.url
    doc = Nokogiri::HTML(open(url))
    concert.venue = doc.search("").text.strip
    concert.address = doc.css("").text.strip
    concert.neighborhood = doc.css("").text
    concert.phone = doc.css("").text.strip
  end
end
