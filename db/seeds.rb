# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.create(name: "Rune Factory 4 Special", genre: "Role-playing (RPG)", price: 5999, release_date: "2019-07-25")

game = Game.new
game.name = "Borderlands 3"
game.genre = "Simulator"
game.price = 5999
game.release_date = "2019-09-13"
game.save

company = Company.find_or_create_by(name: "Saida", description: "My company", start_date: Time.now, country: "Peru")

games = [{name: "Zombie Driver: Immortal Edition", genre: "Racing", price: 5999, release_date: "2019-Jul-25"},
         {name: "Remnant: From the Ashes", genre: "Shooter", price: 6999, release_date: "2019-Aug-20"},
         {name: "Monster Hunter: World - Iceborne", genre: "Adventure", price: 6999, release_date: "2019-Sep-06"},
         {name: "Cyberpunk 2077", genre: "Role-playing (RPG)", price: 4999, release_date: "2020-Sep-17"},
         {name: "Pokémon Shield", genre: "Role-playing (RPG)", price: 5999, release_date: "2019-Nov-15"},
         {name: "Children of Morta", genre: "Role-playing (RPG)", price: 6999, release_date: "2019-Sep-03"}]

games.each do |game|
  game = Game.new(game)
  game.company = company
  game.save!
rescue => e
  p e
  p game
end

