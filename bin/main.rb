require '../lib/methods'
require 'nokogiri'
require 'open-uri'

system 'cls'
system 'clear'
puts 'Insert the URL you want to scrape: '
url = gets.chomp
sleep(1)
system 'cls'
system 'clear'
puts 'Insert the name of the container class holding the elements you are interested in: '
container = gets.chomp
system 'cls'
system 'clear'
puts 'Insert the name of the title class: '
titles = gets.chomp
system 'cls'
system 'clear'
puts 'Insert the name of the prices class: '
prices = gets.chomp

html = Link.new(url)
html.listings(container.to_s)
html.titles(titles.to_s)
html.prices(prices.to_s)

html.all
# str = "Property name: #{@titles[i]} \n Price: #{@prices[i]}"

# https://www.encuentra24.com/panama-es/searchresult/bienes-raices-venta-de-propiedades?regionslug=prov-panama&q=f_price.-false

# articles container = 'article'

# titles class = 'ann-box-title'

# prcices class = 'ann-price-2nd'
