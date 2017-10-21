class Country < ApplicationRecord
  has_many :teams
  has_many :players
end
