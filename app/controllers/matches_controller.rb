class MatchesController < ApplicationController

  def index
    @matches = Match.all
  end

  def show
   team = Team.find(params[:team_id])
   @match = match.teams.find(params[:id])
 end

 def new
    @team = Team.find(params[:team_id])
    @match = Match.new(:team_id => @team.id)
  end

  def create
     @team = Team.find(params[:team_id])
     @match = Match.new(match_params)

     if @match.save
       redirect_to @match
     else
       render 'new'
     end
   end

 private
 def match_params
   params.require(:team).permit(:date, :home_team, :away_team, :team_id)
 end
end
