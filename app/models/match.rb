class Match < ApplicationRecord
  attr_accessible :home_team_id, :away_team_id, :homeTeamScore, :awayTeamScore, :active
  belongs_to :home_team, :class_name => 'Team', :foreign_key => 'team_id_home'
  belongs_to :away_team, :class_name => 'Team', :foreign_key => 'team_id_away'
end
