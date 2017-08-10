class Team < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :league, optional: true
  has_many :players
end
