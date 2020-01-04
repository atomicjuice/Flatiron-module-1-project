class CreateGamesGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :games_genres do |t|
      t.integer :game_id
      t.integer :genre_id
    end
  end
end
