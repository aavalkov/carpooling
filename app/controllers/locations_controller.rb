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

  def create
    @location = Location.new(params[:location])
    if @location.save
      flash[:notice] = "'#{@location.name}' saved"
      redirect_to locations_path
    else
      render 'new'
    end
  end
end
