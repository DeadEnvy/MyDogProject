# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#MainBreed.destroy
#SubBreed.destroy

require 'net/http'
require 'json'
require 'pp'
 
url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)

info =  JSON.parse(response)

# info["message"].each do |breeds|
#   breeds[1].each do |subbreeds|
#     # puts "#{subbreeds}"
#     SubBreed.create(SubBreedName: subbreeds)
#   end
# end

 info["message"].each do |breeds|
    dogBreed = "#{breeds[0]}"
    dogBreedCaps = dogBreed.capitalize
 
  if breeds[1].count == 0
   MainBreed.create(MainBreedName: dogBreedCaps, HasSubBreed: false)
   #puts "Dogs with no sub breeds #{dogBreedCaps}"
  else 
   #puts "Dogs with sub breeds #{dogBreedCaps}"
   MainBreed.create(MainBreedName: dogBreedCaps, HasSubBreed: true)
  end

 
  breeds[1].each do |subbreeds|
    subBreedCaps = subbreeds.capitalize
    do_this = SubBreed.create(SubBreedName: subBreedCaps)

    #puts "#{do_this.errors.full_messages}"

    #puts "#{subBreedCaps} #{dogBreedCaps}"
  end
end

# puts "There are: #{MainBreed.count} main breeds"
 puts "There are: #{SubBreed.count} sub breeds"

# breed = MainBreed.sample
# Dog.create(main_breed: breed)

# MainBreed.all.each do |breed|
#   if breed.sub_breeds.size > 0

      # Dog.create(Sound: Faker::Dog.sound
      #            Age: Faker::Dog.age
      #            Size: Faker::Dog.size
      #            MainBreed: MainBreed.find_by(MainBreedName: breed)
      #            SubBreed: SubBreed.find_by(SubBreedName: ))
    #else
      # Dog.create(Sound: Faker::Dog.sound
      #            Age: Faker::Dog.age
      #            Size: Faker::Dog.size
      #            MainBreed: MainBreed.find_by(MainBreedName: breed)
      #            SubBreed: nil)
#   end
# end