class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :league_id
      t.integer :draft_spot
      t.timestamps
    end
  end
end
