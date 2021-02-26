# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


1.upto(100) do 
  number = rand(1..500)
  response = HTTParty.get("https://pokeapi.co/api/v2/pokemon/#{number}")
  body = JSON.parse(response.body)
  
  Student.create(
    name: Faker::Name.name, 
    hobby: Faker::Food.dish,   
    pokemon: body["name"],
    lucky_number: rand(1..100),
    birthday: rand(1..365).days.ago
  )
end