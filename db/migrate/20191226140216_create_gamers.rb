class CreateGamers < ActiveRecord::Migration[5.2]
  def change
    create_table :gamers  do |t|
    t.string :username
    t.integer :age 
    end
  end
end
