class LocationsController < ApplicationController
  def index
    @locations = Location.all
    @routes = Route.all
  end

  def show
    @location = Location.find(params[:id])
  end

  def new
    @location = Location.new(params[:location])
  end
end
