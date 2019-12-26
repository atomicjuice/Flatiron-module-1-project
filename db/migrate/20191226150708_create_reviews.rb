class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :game_id
      t.integer :gamer_id
      t.integer :rating
    end
  end
end
