class Match < ApplicationRecord
  has_many :games
  has_many :teams, through: :games, source: :team
end
