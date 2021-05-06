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
puts html.arr

