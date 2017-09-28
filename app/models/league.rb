class League < ApplicationRecord
  has_many :teams

  has_many :player_teams
  has_many :player, through: :player_teams
end
