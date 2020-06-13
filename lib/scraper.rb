require 'nokogiri'
require 'open-uri'

# html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(open("https://flatironschool.com/"))
# doc.css(".headline-26OIBN")

# puts doc # Whole website HTML
puts doc.css(".headline-26OIBN") # <h1 class="headline-26OIBN">Change things.</h1>
puts doc.css(".headline-26OIBN").text.strip # Change things
puts doc.css(".inner-3LPBeK inner-3LPBeK .title-3Kf9MY").text.strip # Change things
