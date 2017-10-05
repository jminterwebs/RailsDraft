class Team < ApplicationRecord
  belongs_to :user, optional: true

  belongs_to :league, optional: true

  has_many :player_teams
  has_many :players, through: :player_teams

end
