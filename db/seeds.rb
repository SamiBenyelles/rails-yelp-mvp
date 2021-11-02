require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all

5.times do
  p Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.city,
    category: Restaurant::CATEGORY.sample
  )
end
