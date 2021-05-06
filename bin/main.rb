require '../lib/methods'
require 'nokogiri'
require 'open-uri'

puts 'Insert the URL you want to scrape'
url = gets.chomp

Url.to_search(url)
p Url.url