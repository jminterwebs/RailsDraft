class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :league_id, :draft_spot
  belongs_to :league, only: [:name]
  has_many :players, serializer: PlayerSerializer
end
