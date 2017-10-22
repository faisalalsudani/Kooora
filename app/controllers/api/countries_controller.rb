class Api::CountriesController < ApplicationController
  def index
    render status: 200, json: {
      countries: Country.all
    }.to_json
  end
  def show
    country = Country.find(params[:id])
    render status: 200, json: country
  end
end
