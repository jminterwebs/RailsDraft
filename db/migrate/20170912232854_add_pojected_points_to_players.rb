class AddPojectedPointsToPlayers < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :projected_points, :integer

  end
end
