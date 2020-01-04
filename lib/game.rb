class Game < ActiveRecord::Base
  has_many :games_genres
  has_many :genres, through: :games_genres
  has_many :reviews
  has_many :gamers, through: :reviews
  
  # has_many :genres, through: :games_genres

  # def self.find_by_genre(given_genre)
  #   all.where(genre:given_genre)
  # end

  def self.get_all_games
    games = self.all
    puts games.map{|game|game.name}
  end

  def game_average(game)
    # Game.find_
    # game_reviews = game.reviews
    # system "clear"
    # game_ratings = game_reviews.map{|gr|gr.rating}
    # game_average = game_ratings.sum/game_ratings.size
    # game_average = game_average.round(1)

    game_review_ratings = game.reviews.map{|review|review.rating}
    sum = game_review_ratings.sum
    total = game.reviews.size
    review_average = sum /total

    review_average

    game.reviews.map{|review|review.rating}.sum / game.reviews.size

 
  end

  


end