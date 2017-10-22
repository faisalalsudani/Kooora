class Team < ActiveRecord::Base
  belongs_to :country
  has_many :players

  has_many :matches_as_team_home, class_name: :Match, foreign_key: :team_home_id
  has_many :matches_as_team_away, class_name: :Match, foreign_key: :team_away_id

  def matches
    matches_as_team_home.to_a + matches_as_team_away.to_a
  end
end
