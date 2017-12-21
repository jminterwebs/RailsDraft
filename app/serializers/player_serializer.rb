class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :unique_player_id, :teamAbbr, :rank, :position, :projected_points


end
