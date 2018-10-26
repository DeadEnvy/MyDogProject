# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 Dog.destroy_all
 SubBreed.destroy_all
 MainBreed.destroy_all





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
  main_dog_type = MainBreed.create(MainBreedName: dogBreedCaps, HasSubBreed: false)
  Dog.create(Sound: Faker::Dog.sound,
             MemePhrase: Faker::Dog.meme_phrase,
             Age: Faker::Dog.age,
             main_breed: main_dog_type,
             sub_breed: nil)
   #puts "No sub breeds #{dogBreedCaps}"
  else 
   #puts "Has sub breeds #{dogBreedCaps}"
   main_dog_type = MainBreed.create(MainBreedName: dogBreedCaps, HasSubBreed: true)
  end

 
  breeds[1].each do |subbreeds|
    subBreedCaps = subbreeds.capitalize
    
    subbreed_type = SubBreed.create(SubBreedName: subBreedCaps,
                    main_breed: main_dog_type)

    Dog.create(Sound: Faker::Dog.sound,
               MemePhrase: Faker::Dog.meme_phrase,
               Age: Faker::Dog.age,
               main_breed: main_dog_type,
               sub_breed: subbreed_type)

    #puts "#{do_this.errors.full_messages}"

    #puts "  #{subBreedCaps} #{dogBreedCaps}"
  end
end

 puts "There are: #{MainBreed.count} main breeds"
 puts "There are: #{SubBreed.count} sub breeds"
 puts "There are: #{Dog.count} dogs"
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