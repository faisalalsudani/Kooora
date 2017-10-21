class Match < ApplicationRecord
  belongs_to :country, :class_name => "Country"
end
