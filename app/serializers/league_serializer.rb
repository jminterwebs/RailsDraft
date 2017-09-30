class LeagueSerializer < ActiveModel::Serializer
  attributes :id, :name, :teams
  has_many :players, serializer: PlayerSerializer



end
