require '../lib/methods'
require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(URI.open("https://www.airbnb.com/s/Bajo-Boquete/homes?place_id=ChIJWYPOC9_spY8RdI653z0wmMA&refinement_paths%5B%5D=%2Fhomes&search_type=section_navigation"))

articles = doc.css('._8s3ctt')

titles = articles.each { |x| puts x.css('._bzh5lkq').text }
prices = articles.each { |x| puts x.css('._olc9rf0').text }