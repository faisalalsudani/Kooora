class MatchesController < ApplicationController

  def show
    team = Team.find(params[:team_id])
    @match = match.teams.find(params[:id])
  end

  def new
    team = Team.find(params[:team_id])
    @match = team.matchs.build
    @match = Team.new
  end

  def create
    team = Team.find(params[:team_id])

    @match = team.matchs.create(match_params)

      if @match.save
         redirect_to @match.team
      else
        redirect_to @match.team, alert: "Team is not saved, you have to add first name!"
      end
  end

  private
  def match_params
    params.require(:team).permit(:name, :logo, :points, :country_id)
  end

end
