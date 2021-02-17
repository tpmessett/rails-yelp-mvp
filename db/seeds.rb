# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
hyotan = { category: "japanese", name: "hyotan", address: "Oxford Circus, London W2 7JE", phone_number: "0123456789" }
pizzaeast = { category: "italian", name: "Pizza East", address: "Oxford Circus, London W2 7JE", phone_number: "0123456789" }
pizzawest = { category: "italian", name: "Pizza West", address: "Oxford Circus, London W2 7JE", phone_number: "0123456789" }
pizzasouth = { category: "italian", name: "Pizza South", address: "Oxford Circus, London W2 7JE", phone_number: "0123456789" }
mcdonalds = { category: "french", name: "McDonalds", address: "Oxford Circus, London W2 7JE", phone_number: "0123456789" }

[ hyotan, mcdonalds, pizzasouth, pizzaeast, pizzawest ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
