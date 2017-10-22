class Api::TeamsController < ApplicationController
  def index
    render status: 200, json: {
      teams: Team.all
    }.to_json
  end
  def show
    team = Team.find(params[:id])
    render status: 200, json: team
  end
end
