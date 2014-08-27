class LocationsController < ApplicationController
  def index
    @locations = Location.all
    @routes = Route.all
  end

  def show
    @location = Location.find(params[:id])
  end
end
