class LeagueSerializer < ActiveModel::Serializer
  attributes :id, :name, :teams, :draft_round, :draft_spot, :players

  has_many :players, serializer: PlayersAllSerializer
  has_many :teams, serializer: TeamSerializer
end
