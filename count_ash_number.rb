require 'net/http'
require 'json'
require 'pp'

url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json'
uri = URI(url)
response = Net::HTTP.get(uri)
tree_data = JSON.parse(response)

def count_ash_number(tree_data)
  ash_number = 0
  tree_data.each do |ash_tree|
    if ash_tree['common_name'].include?('ash') 
      ash_number += 1
    end
  end
  return ash_number
end

ash_number = count_ash_number(tree_data)
puts "We have #{ash_number} Ash Trees in the city."

url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json?$limit=306000'
uri = URI(url)
response = Net::HTTP.get(uri)
tree_data = JSON.parse(response)

def count_ash_number(tree_data)
  ash_number = 0
  tree_data.each do |ash_tree|
    if ash_tree['common_name'].include?('ash') 
      ash_number += 1
    end
  end
  return ash_number
end

ash_number = count_ash_number(tree_data)
puts "We have #{ash_number} Ash Trees in the full tree dataset in the city."