class Api::PlayersController < ApplicationController
  def index
    render status: 200, json: {
      players: Player.all
    }.to_json
  end
  def show
    player = Player.find(params[:id])
    render status: 200, json: player
  end
end
