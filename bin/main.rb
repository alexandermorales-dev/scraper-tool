require_relative '../lib/methods'
require 'nokogiri'
require 'open-uri'

listings_class = '_8s3ctt'
title_class = '_bzh5lkq'
price_class = '_olc9rf0'

# test case 1
url1 = 'https://www.airbnb.com/s/Bajo-Boquete/homes?place_id=ChIJWYPOC9_spY8RdI653z0wmMA&refinement_paths%5B%5D=%2Fhomes&search_type=section_navigation'

doc1 = Nokogiri::HTML(URI.open(url1))
listings = doc1.css(".#{listings_class}")
p(listings.map { |x| x.css(".#{title_class}").text })
p(listings.map { |x| x.css(".#{price_class}").text })

# test case 2
url2 = 'https://www.airbnb.com/s/Santa-Clara/homes?place_id=ChIJSbtePuWfrI8RWyPxIedxXic&refinement_paths%5B%5D=%2Fhomes&search_type=section_navigation'

test2 = Link.new(url2, listings_class, title_class, price_class)
puts "These are the property titles: #{test2.titles}"
puts "These are the property prices: #{test2.prices}"
