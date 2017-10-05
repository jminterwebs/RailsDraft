class CreateLeagues < ActiveRecord::Migration[5.0]
  def change
    create_table :leagues do |t|
      t.string :name
      t.integer :draft_round, :default => 1
      t.integer :draft_spot,  :default => 1

      t.timestamps
    end
  end
end
