class Team < ApplicationRecord
  belongs_to :country
  has_many :players
  has_many :games
  has_many :matches, through: :games, source: :match
end
