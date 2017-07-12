require 'httparty'

puts "Enter state Code"
code = gets.chomp
response = HTTParty.get("http://localhost:3000/api/v1/states/#{code}")
puts response
