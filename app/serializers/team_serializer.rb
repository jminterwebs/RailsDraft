class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :league_id, :draft_spot
  
  has_many :players, serializer: PlayerSerializer
end
