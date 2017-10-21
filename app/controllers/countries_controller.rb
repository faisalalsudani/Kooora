class CountriesController < ApplicationController

  def index
    @countries = Country.all
    @team = Team.new
  end

  def show
    @country   = Country.find(params[:id])
    @teams     = @country.teams
    @team      = Team.new
  end

  def matches
    Match.find(:conditions => ["home_team_id = ? OR away_team_id = ?", id, id])
  end

  def new
    @country = Country.new
  end

  def create
    @country = Country.new(country_params)
    if @country.save
      redirect_to @country, notice: "Country created!"
    else
      render :new
    end
  end

  private

  def country_params
    params.require(:country).permit(:name,:flag)
  end



end
