class Game < ActiveRecord::Base
  has_many :reviews
  has_many :Gamers, through: :reviews
end