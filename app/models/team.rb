class Team < ApplicationRecord

  belongs_to :country
  has_many :players

  has_and_belongs_to_many :matches

end
