class Player < ApplicationRecord

  has_many :player_leagues
  has_many :leagues, through: :player_leagues

  has_many :player_teams
  has_many :teams, through: :player_teams



  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
