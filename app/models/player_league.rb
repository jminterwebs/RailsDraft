class PlayerLeague < ApplicationRecord
  belongs_to :league
  belongs_to :player
end
