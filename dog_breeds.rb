require 'net/http'
require 'json'
require 'pp'

url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)
dog_breeds = JSON.parse(response) 

dog_breeds['message'].each do |dog_breed, sub_breeds|
  puts "*#{dog_breed.capitalize}"
  sub_breeds.each do |sub_breed|
    puts " *#{sub_breed.capitalize}"
  end
end