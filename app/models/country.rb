class Country < ApplicationRecord
  has_many :teams
  has_many :players
  has_many :competitions
end
