class League < ApplicationRecord
  has_many :teams
  has_many :player_leagues
  has_many :players, through: :player_leagues

  accepts_nested_attributes_for :teams




end
