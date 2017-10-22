class Api::CompetitionsController < ApplicationController
  def index
    render status: 200, json: {
      competitions: Competition.all
    }.to_json
  end
  def show
    competition = Competition.find(params[:id])
    render status: 200, json: competition
  end
end
