class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :unique_player_id, :teamAbbr, :rank, :position, :team_id, :projected_points
end
