class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def show
    country = Country.find(params[:countries_id])
    @team = @country.teams.find(params[:id])
  end

  def new
    country = Country.find(params[:countries_id])
    @team = country.teams.build
    @team = Team.new
  end

  def create
    country = Country.find(params[:countries_id])

    @team = country.teams.create(team_params)

      if @team.save
         redirect_to @team.country
      else
        redirect_to @team.country, alert: "!"
      end

  end

  private
  def team_params
    params.require(:team).permit(:name, :logo, :points, :countries_id)
  end

end
