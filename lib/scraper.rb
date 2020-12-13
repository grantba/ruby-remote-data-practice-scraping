require 'nokogiri'
require 'open-uri'


html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html) 

#doc.css(".site-header__hero__headline").text.strip
#doc.css(".text.title-oE5vT4").text.strip
courses = doc.css(".tout__label.heading.heading--level-4")

courses.each do |course|
  puts course.text.strip
end 