class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :player_id, :teamAbbr, :rank, :position, :team_id, :projected_points
end
