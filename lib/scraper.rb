require 'nokogiri'
require 'net/http'

uri = URI("https://flatironschool.com/")
response = Net::HTTP.get_response(uri)

doc = Nokogiri::HTML(response.body)

# puts doc.css(".heading-primary")
items =  doc.css(".heading-20-semibold.color-black.card-title-tl")
count = 1

items.each do |item|
  puts "#{count}: #{item.text.strip}"
  count += 1
end



pp doc.css(".heading-20-semibold.color-black.card-title-tl")[0]
