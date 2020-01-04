class GamesGenre < ActiveRecord::Base
  belongs_to :game
  belongs_to :genre
  # has_many :games
  # has_many :genres

  # def self.all_games_with_genre(user_input)
  #   all_games = GamesGenre.all.select{
  #   |game_genre| game_genre.genre.genre_type == user_input}
  #   all_games
  # end
end