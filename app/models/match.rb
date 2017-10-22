class Match < ActiveRecord::Base
  belongs_to :home_team, class_name: :Team
  belongs_to :away_team, class_name: :Team

  def allTeams
    @teams = Team.all
  end

  def allMatches
    allTeams
    @matches = Match.all
  end

  def match_teams
    allMatches

    @teams.each do |team|
      puts team.name
    end

    @matches.each do |match|
      @match = match
      # @home_team = match.home_team_id
      # @away_team = match.away_team_id
      # homeTeam = @teams.find(@home_team)
      # awayTeam = @teams.find(@away_team)
      # return homeTeam.name, awayTeam.name
      # puts "#{homeTeam.name} vs #{awayTeam.name}"
    end
  end


end
