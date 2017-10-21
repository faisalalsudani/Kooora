class Match < ActiveRecord::Base
  belongs_to :away_team,
             :class_name => "Teeam",
             :foreign_key => "team1_id"
  belongs_to :home_team,
             :class_name => "Teeam",
             :foreign_key => "team2_id"
end
