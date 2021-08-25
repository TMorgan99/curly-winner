#!/usr/bin/env ruby

require 'nokogiri'
require 'open-uri'
# URL = 'http://html5up.net/'
# URL = 'file:///home/pi/Downloads/HTML5%20UP!%20Responsive%20HTML5%20and%20CSS3%20Site%20Templates.html'

URL = '/home/pi/Downloads/HTML5 UP! Responsive HTML5 and CSS3 Site Templates.html'

doc = Nokogiri::HTML(URI.open( URL ))

# cssPath = '#items > article a.button.download #href'
cssPath = 'article a.button.download'


# puts doc.to_html.size

scrapes = doc.css( cssPath )

# puts scrapes.size

choice = rand( scrapes.size )

selected =  scrapes[choice]

puts choice

# open this, download the .zip file to Downloads folder.
puts "html5up.net#{selected['href']}" 
