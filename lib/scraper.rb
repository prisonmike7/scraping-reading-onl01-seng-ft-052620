require 'nokogiri'
require 'open-uri'

# html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(open("https://flatironschool.com/"))
# doc.css(".headline-26OIBN")

# puts doc # Whole website HTML
puts doc.css(".headline-26OIBN") # <h1 class="headline-26OIBN">Change things.</h1>
puts doc.css(".headline-26OIBN").text.strip # Change things
# puts doc.css("#id-ebf87b56-e1fc-5b3a-a208-da1860a99d94 > div > h2").text.strip # Change things
courses = doc.css("#id-3c239880-48cf-5ce7-84d0-578546d87586 > div > div.content-3OTK_R > div")

courses.each do |course|
  puts course.text.strip
end
