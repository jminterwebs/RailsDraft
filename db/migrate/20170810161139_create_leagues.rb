class CreateLeagues < ActiveRecord::Migration[5.0]
  def change
    create_table :leagues do |t|
      t.string :name
      t.integer :draft_round
      t.integer :draft_spot

      t.timestamps
    end
  end
end
