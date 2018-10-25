require 'faker'

10.times do
  city = City.create!(city_name: Faker::Cannabis.strain)
end

10.times do
	dog = Dog.create!(name: Faker::BreakingBad.character, city_id: rand(1..10))
end

10.times do
  dogsitter = Dogsitter.create!(name: Faker::Name.first_name, city_id: rand(1..10))
end

20.times do
  stroll = Stroll.create!(dogsitter_id: rand(1..10), dog_id: rand(1..10))
end
