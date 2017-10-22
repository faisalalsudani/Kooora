class Api::TeamsController < ApplicationController
  def index
    render status: 200, json: {
      teams: Team.all
    }.to_json
  end
end
