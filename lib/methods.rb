class Link
  attr_reader :addr, :listings

  def initialize(url, attr, title_class, price_class)
    require 'nokogiri'
    require 'open-uri'
    @addr = Nokogiri::HTML(URI.open(url.to_s))
    @listings = @addr.css(".#{attr}".to_s)
  end

  def titles(title_class)
    @titles = @listings.map { |x| x.css(".#{title_class}").text }
  end

  def price(price_class)
    @prices = @listings.map { |x| x.css(".#{price_class}").text }
  end
end
