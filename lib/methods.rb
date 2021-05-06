class Link
  attr_reader :addr, :listings, :titles, :prices, :average
  def initialize(url)
    require 'nokogiri'
    require 'open-uri'
    @addr = Nokogiri::HTML(URI.open("#{url}"))
  end

  def listings(attr)
    @addr
    @listings = @addr.css("#{attr}")
  end

  def titles(title_class)
    @listings
    @titles = @listings.map { |x| x.css(".#{title_class}").text}
  end

  def prices(prices_class)
    @listings
    @prices = @listings.map { |x| x.css(".#{prices_class}").text}
  end


  def all
    @listings
    @titles
    @prices
    i = 0
    while i < @titles.length
      puts "Property name: #{@titles[i]} \n Price: #{@prices[i]}"
      i += 1
    end
  end
end