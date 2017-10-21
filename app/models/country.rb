class Country < ApplicationRecord
  has_many :teams, dependent: :destroy
end
