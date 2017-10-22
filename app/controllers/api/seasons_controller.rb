class Api::SeasonsController < ApplicationController
  def index
    render status: 200, json: {
      seasons: Season.all
    }.to_json
  end
end
