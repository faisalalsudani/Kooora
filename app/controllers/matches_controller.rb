class MatchesController < ApplicationController
  def index
    @matches = Match.all
  end

  def new
    @team = Team.find(params[:team_id])
    @match = Match.new(:team_id => @team.id)
  end

  def create
    @team = Team.find(params[:team_id])
    @match = @team.matches.build(match_params)

    if @match.save
      flash[:success] = "Game added successfully!"
      redirect_to @country.team
    else
      render 'new'
    end
  end



  private
  def match_params
    params.require(:match).permit(
    :date,
    :homeTeam,
    :awayTeam,
    :homeTeamScore,
    :awayTeamScore,
    :homeTeam_id,
    :awayTeam_id,
    :team_id
    )
  end

end
