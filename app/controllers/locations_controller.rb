class LocationsController < ApplicationController
  def index
    @cities = Location.all
  end

  def show
    @city = Location.find(params[:id])
  end

  def new
    @city = Location.new
  end

  def create
    city = Location.create(city_params)
    city.save
    redirect_to '/locations/:id'
  end

  def destroy
    Location.destroy(params[:id])
    redirect_to cities_path
  end

  def edit
    @city = Location.find(params[:id])
  end

  def update
    city = Location.find(params[:id])
    city.update(city_params)
    redirect_to city
  end

  # def search

  # end

  def city_params
    params.require(:city).permit(
      :city
      )
  end

end
