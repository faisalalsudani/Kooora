class Api::PlayersController < ApplicationController
  def index
    render status: 200, json: {
      players: Player.all
    }.to_json
  end
end
