class Player < ApplicationRecord
  belongs_to :team, optional: true

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
