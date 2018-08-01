class Scene::Scraper

  URL = "https://www.clevescene.com/cleveland/EventSearch?feature=Concert&narrowByDate=Today"

  def self.scrape_concerts
    doc = Nokogiri::HTML(open(URL))
    doc.css(".EventListing").css(".clearfix").each do |concert|
      name = concert.css("h3 a")[2].text.strip
      price = concert.css(".price").text.strip
      venue = concert.css(".listingLocation a")[0].text
      url = concert.css("h3 a")[2].attribute("href").value
      Scene::Concert.new(name, price, venue, url)
    end
  end

  def self.scrape_details(concert)
    url = concert.url
    doc = Nokogiri::HTML(open(url))
      concert.time = doc.css("#gridMainColumn").css("#EventMetaData").css(".eventInfo").css(".eventWhen").text.strip
      concert.address = doc.css("#EventLocation").css(".street-address").text.strip
      concert.neighborhood = doc.css("#EventLocation").css(".locationRegion").text.strip
      concert.phone = doc.css("#EventLocation").css(".locationPhone .value").text.strip
  end

end
