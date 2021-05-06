require 'nokogiri'
require 'open-uri'

html = Nokogiri::HTML(URI.open('https://www.encuentra24.com/panama-es/searchresult/bienes-raices-venta-de-propiedades?q=f_price.-false&regionslug=prov-panama'))

articles = html.css('article')

titles = articles.map { |x| x.css('.ann-box-title').text }
prices = articles.map { |x| x.css('.ann-price-2nd').text }

i = 0

while i < titles.length
  puts "Property name:\n#{titles[i]} \nprice: #{prices[i]}"
  i += 1
end
