class Link
  attr_reader :addr, :listings, :titles, :prices, :average, :arr

  def initialize(url, attr, title_class, price_class)
    require 'nokogiri'
    require 'open-uri'
    @addr = Nokogiri::HTML(URI.open(url.to_s))
    @listings = @addr.css(".#{attr}".to_s)
    @titles = @listings.map { |x| x.css(".#{title_class}").text }
    @prices = @listings.map { |x| x.css(".#{price_class}").text }
  end

  def all
    i = 0
    @arr = []
    while i < @titles.length
      x = "Property name: #{@titles[i]} \n Price: #{@prices[i]}\n\n"
      i += 1
      @arr.push(x)
      @arr
    end
  end
end
