# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Flat.destroy_all

10.times do
  flat = Flat.create!(
      name: Faker::Name.name,
      address: Faker::Address.city,
      description: Faker::Movies::BackToTheFuture.quote,
      price_per_night: Faker::Number.number(3),
      number_of_guests: Faker::Number.number(1)
    )
end

puts 'Finished!'
