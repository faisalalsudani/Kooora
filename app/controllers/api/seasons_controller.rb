class Api::SeasonsController < ApplicationController
  def index
    render status: 200, json: {
      seasons: Season.all
    }.to_json
  end
  def show
    season = Match.find(params[:id])
    render status: 200, json: season
  end
end
