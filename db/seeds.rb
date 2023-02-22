# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Restaurant.destroy_all

dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french" }
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
antalia = {name: "Antalia", address: "3 bd lafaillette", category: "belgian" }
doner = {name: "Doner", address: "5 rue felibien", category: "chinese" }
king = {name: "King", address: "7 bd du duc", category: "french" }


[dishoom, pizza_east, antalia, doner, king].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
