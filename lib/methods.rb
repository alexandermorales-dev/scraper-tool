class Link
  attr_reader :addr, :listings

  def initialize(url, attr, _title_class, _price_class)
    require 'nokogiri'
    require 'open-uri'
    @addr = Nokogiri::HTML(URI.parse(url.to_s).open)
    @listings = @addr.css(".#{attr}".to_s)
  end

  def titles(title_class)
    @titles = @listings.map { |x| x.css(".#{title_class}").text }
  end

  def price(price_class)
    @prices = @listings.map { |x| x.css(".#{price_class}").text }
  end
end
