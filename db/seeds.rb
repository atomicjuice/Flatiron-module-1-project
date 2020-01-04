# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Game.destroy_all
Gamer.destroy_all
Review.destroy_all
GamesGenre.destroy_all
Genre.destroy_all



# Genre.create(genre_type: "action")
# Genre.create(genre_type: "adventure")
# Genre.create(genre_type: "rpg")
# Genre.create(genre_type: "strategy")
# Genre.create(genre_type: "tactical")
# Genre.create(genre_type: "puzzle")
# Genre.create(genre_type: "horror")
# Genre.create(genre_type: "platform")
# Genre.create(genre_type: "fps")
# Genre.create(genre_type: "fighting")

20.times do Genre.create(
  genre_type: Faker::Game.unique.genre
)
end


30.times do Game.create(
  name: Faker::Game.title,
  game_company: Faker::Company.unique.name
)
end

30.times do Gamer.create(
    username: Faker::Name.unique.first_name,
    age: Faker::Number.within(range: 12..70)
)
end


150.times do Review.create(
  game_id: Faker::Number.within(range: 1..20),
  gamer_id: Faker::Number.within(range: 1..20),
  rating: Faker::Number.within(range: 1..10)
)
end

150.times do GamesGenre.create(
  genre_id: Faker::Number.within(range: 1..10),
  game_id: Faker::Number.within(range: 1..25)
)
end










