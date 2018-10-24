# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'net/http'
require 'json'
require 'pp'
 
url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)

info =  JSON.parse(response)

info["message"].each do |breeds|
   dogBreed = "#{breeds[0]}"
   dogBreedCaps = dogBreed.capitalize
 
  if breeds[1].count == 0
  puts "No sub: #{dogBreedCaps}"
   # main_breed.create(MainBreedName: dogBreedCaps)
  else 
    puts "Has sub: #{dogBreedCaps}"
  end

  breeds[1].each do |subbreeds|
  subBreedCaps = subbreeds.capitalize

    puts "Sub: #{subBreedCaps}"
  # sub_breed.create(SubBreedName: subBreedCaps)
   
  # fullBreed =  "#{subBreedCaps} #{dogBreedCaps}"


  end
end

