require 'net/http'
require 'json'

uri = URI('http://localhost:3000/links.json')

res = Net::HTTP.get(uri)

data = JSON.parse(res)

data.each do |datum|
  puts "This link is to #{datum['link_url']} and has a title of #{datum['title']}.\n"
end
