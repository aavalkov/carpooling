class RoutesController < ApplicationController
  def index
    @routes = Route.all
  end

  def show
    @route = Route.find(params[:id])
  end

  def new
    @route = Route.new(params[:route])
  end

  def create
    @route = Route.new(params[:route])
    if @route.save
      flash[:notice] = "'#{@route.name}' saved"
      redirect_to locations_path
    else
      render 'new'
    end
  end
end
