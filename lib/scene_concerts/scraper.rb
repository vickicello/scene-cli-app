class Scene::Scraper

URL = "https://www.clevescene.com/cleveland/EventSearch?feature=Concert&narrowByDate=Today"

  def self.scrape_concerts
    doc = Nokogiri::HTML(open(URL))
    doc.css(".EventListing").css(".clearfix").each do |event|
      concert = Scene::Concert.new(name, price, venue, url)
      concert.name = event.css(".EventListing").css(".clearfix").css("h3 a")[2].text.strip
      concert.price = event.css(".EventListing").css(".clearfix").css(".price").text.strip
      concert.venue = event.css(".EventListing").css(".clearfix").css(".listingLocation a").text.strip
      concert.url = event.css(".EventListing").css(".clearfix").css("h3 a")[2].attribute("href").value
    end
  end

  def self.scrape_details(concert)
    url = concert.url
    doc = Nokogiri::HTML(open(url))
    # need to drill down more, not sure how, on 'time = '
    # time = concert.css(".EventListing").css(".clearfix").css(".listing").text.strip
    concert.description = doc.css("").text.strip
    concert.address = doc.css("").text.strip
    concert.neighborhood = doc.css("").text
    concert.phone = doc.css("").text.strip
  end
end
