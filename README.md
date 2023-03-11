# webscraper.rb
- Here are 10 ways to fetch and parse HTML using Ruby and Nokogiri:

1. Using Net::HTTP:

```ruby
require 'uri'
require 'net/http'
require 'nokogiri'

url = URI("https://www.example.com/")
response = Net::HTTP.get_response(url)
doc = Nokogiri::HTML(response.body)
puts doc
```
2. Using URI#open:
```ruby
require 'open-uri'
require 'nokogiri'

url = "https://www.example.com/"
doc = Nokogiri::HTML(URI.open(url))
puts doc
```
3. Using Kernel#open:
```ruby
require 'open-uri'
require 'nokogiri'

url = "https://www.example.com/"
doc = Nokogiri::HTML(open(url))
puts doc
```
4. Using HTTParty:

```ruby
require 'httparty'
require 'nokogiri'

url = "https://www.example.com/"
response = HTTParty.get(url)
doc = Nokogiri::HTML(response.body)
puts doc
```

5. Using Faraday:
```ruby
require 'faraday'
require 'nokogiri'

url = "https://www.example.com/"
response = Faraday.get(url)
doc = Nokogiri::HTML(response.body)
puts doc

```
6. Using Mechanize:
```ruby
require 'mechanize'

url = "https://www.example.com/"
agent = Mechanize.new
doc = agent.get(url).parser
puts doc
```
7. Using Watir:
```ruby
require 'watir'

url = "https://www.example.com/"
browser = Watir::Browser.new
browser.goto(url)
doc = Nokogiri::HTML(browser.html)
puts doc
```
8. Using Selenium:
```ruby
require 'selenium-webdriver'

url = "https://www.example.com/"
driver = Selenium::WebDriver.for :chrome
driver.navigate.to url
doc = Nokogiri::HTML(driver.page_source)
puts doc
```
9. Using Curb:
```ruby
require 'curb'
require 'nokogiri'

url = "https://www.example.com/"
response = Curl.get(url)
doc = Nokogiri::HTML(response.body_str)
puts doc
```
10. Using Typhoeus:
```ruby

require 'typhoeus'
require 'nokogiri'

url = "https://www.example.com/"
response = Typhoeus.get(url)
doc = Nokogiri::HTML(response.body)
puts doc
```

11. long
```ruby
require 'nokogiri'
require 'net/http'

url = URI.parse("https://flatironschool.com/")
http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true if url.scheme == 'https'
request = Net::HTTP::Get.new(url.request_uri)
response = http.request(request)
html = response.body

doc = Nokogiri::HTML(html)
puts doc
```


- All of these methods use different libraries and techniques to fetch and parse HTML, but the result is the same: a Nokogiri document object that can be manipulated and searched using Ruby code. Some of these methods, like Mechanize and Watir, even automate web browsing and user interactions.
