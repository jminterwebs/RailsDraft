class LeagueSerializer < ActiveModel::Serializer
  attributes :id, :name, :teams, :draft_round, :draft_spot
  has_many :players, serializer: PlayerSerializer



end
