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
dishoom = { name: "Chinese Emporor", address: "7 Boundary St, London E2 7JE", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }
pizza_paris =  { name: "Pizza Paris", address: "20 rue Clignacourt, 75 018 Paris", phone_number: "01 42 03 05 06", category: "italian" }
delice_dasie =  { name: "Délice d'Asie", address: "13 rue Garnier, 92 200 Neuilly-sur-Seine", category: "chinese" }
chez_georges =  { name: "Chez Georges", address: "152 boulevard Haussmann, 75008 Paris", category: "french" }

[ dishoom, pizza_east, pizza_paris, delice_dasie, chez_georges ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
