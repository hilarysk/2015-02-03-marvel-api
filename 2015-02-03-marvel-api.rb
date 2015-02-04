require "marvel_api"
require "pry"

@client = Marvel::Client.new
    
@client.configure do |config|
  config.api_key = '19ed6fc14afbc382ca5733e14eeb8229'
  config.private_key = '124f114eaba7e60964b898137d1a615a61b208da'
end

puts "What Marvel character would you like to search for?"
marvel_char = gets.chomp

puts @client.characters(name: "#{marvel_char}")
