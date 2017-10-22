class Match < ApplicationRecord
  has_one :homeTeam, class_name: 'Team', primary_key: :homeTeam_id
  has_one :awayTeam, class_name: 'Team', primary_key: :awayTeam_id

  @matches = Match.all

  @matches.all.each do |match|
    @homeTeam = match.homeTeam_id
    @awayTeam = match.awayTeam_id
  end



end
