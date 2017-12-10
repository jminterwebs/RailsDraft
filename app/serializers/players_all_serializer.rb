class PlayersAllSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :unique_player_id
end
