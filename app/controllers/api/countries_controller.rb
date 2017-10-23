module Api
  class CountriesController < ApplicationController

    before_action :set_country, only: [:show, :destroy]

    def index
      render json: Country.all
    end

    def create
      @country = Country.create(country_params)
      if @country.save
        render json: @country, status: 201
      else
        render json: { errors: @country.errors.full_messages }, status: 422
      end
    end

    def show
      render json: @country = Country.find(params[:id])
    end

    def destroy
      @country.destroy
      render :show, status: :ok
    end

    private
    def set_country
      @country = Country.find(params[:id])
    end

    def country_params
      params.permit(:name, :flag)
    end

  end
end
