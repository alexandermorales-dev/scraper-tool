class Link
  attr_reader :addr, :list, :titles, :prices, :average, :arr

  def initialize(url)
    require 'nokogiri'
    require 'open-uri'
    require 'csv'
    @addr = Nokogiri::HTML(URI.open(url.to_s))
  end

  def listings(attr)
    @list = @addr.css(attr.to_s)
  end

  def titles(title_class)
    @titles = @list.map { |x| x.css(".#{title_class}").text }
  end

  def prices(prices_class)
    @prices = @list.map { |x| x.css(".#{prices_class}").text }
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
