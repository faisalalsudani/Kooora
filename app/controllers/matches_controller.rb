class MatchesController < ApplicationController

  def index
    @matches = Match.all
  end

  def new
    @teams = Team.all
    @matche = Match.new
  end

  def create
    @match = Match.new(match_params)
    if @country.save
      redirect_to @match, notice: "Match created!"
    else
      render :new
    end
  end

  private

  def match_params
    params.require(:match).permit(:team_id => [])
  end

end
