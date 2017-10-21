class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    country = Country.find(params[:country_id])
    @team = country.teams.find(params[:id])
  end

  def new
    country = Country.find(params[:country_id])
    @team = country.teams.build
    @team = Team.new
  end

  def create
    country = Country.find(params[:country_id])

    @team = country.teams.create(team_params)

      if @team.save
         redirect_to @team.country
      else
        redirect_to @team.country, alert: "Team is not saved, you have to add first name!"
      end

  end

  def edit
    country = Country.find(params[:country_id])
    @team = country.teams.find(params[:id])
  end

  def update
    puts "#" * 50
    @team = Team.find(params[:id])

    if @team.update_attributes(team_params)
      redirect_to @team.country, notice: "Evaluation updated"
    else
      render :edit
    end

  end

  def destroy
    @team = Team.find(params[:id])

    @team.destroy
    redirect_to @team.country
  end



  private
  def team_params
    params.require(:team).permit(:name, :logo, :points, :country_id)
  end
end
