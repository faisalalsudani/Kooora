class Team < ApplicationRecord
  belongs_to :country
  has_many :players
end
