class CreatePlayerLeagues < ActiveRecord::Migration[5.0]
  def change
    create_table :player_leagues do |t|
      t.integer :player_id
      t.integer :league_id
      t.timestamps
    end
  end
end
