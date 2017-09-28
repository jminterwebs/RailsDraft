class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.integer :unique_player_id
      t.string :teamAbbr
      t.integer :rank
      t.string :position
      t.timestamps
    end
  end
end
