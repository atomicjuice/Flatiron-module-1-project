class AddColumnGamer < ActiveRecord::Migration[5.2]
  def change
    add_column :gamers, :fav_game_character, :string
  end
end
