class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :league, only: [:name]
  has_many :players, serializer: PlayerSerializer
end
