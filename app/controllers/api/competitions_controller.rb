class Api::CompetitionsController < ApplicationController
  def index
    render status: 200, json: {
      competitions: Competition.all
    }.to_json
  end
end
