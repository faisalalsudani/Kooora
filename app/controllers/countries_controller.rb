class CountriesController < ApplicationController

  def index
    @countries = Country.all
  end

  def show
    @country = Country.find(params[:id])
  end

  def new
    @country = Country.new
  end

  def create
    @country = Country.new(countries_params)
    if @country.save
      redirect_to @country, notice: "Country created!"
    else
      render :new
    end
  end


  private
  def countries_params
    params.require(:country).permit(:name, :flag)
  end

end
