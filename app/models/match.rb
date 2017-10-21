class Match < ApplicationRecord
  belongs_to :homeTeam_id, :class_name => 'Team'
  belongs_to :awayTeam_id, :class_name => 'Team'
end
