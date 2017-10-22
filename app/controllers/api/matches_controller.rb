class Api::MatchesController < ApplicationController
  def index
    render status: 200, json: {
      matches: Match.all
    }.to_json
  end
  def show
    match = Match.find(params[:id])
    render status: 200, json: match
  end
end
