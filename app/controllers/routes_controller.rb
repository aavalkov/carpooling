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

  def edit
    @route = Route.find(params[:id])
  end

  def update
    @route = Route.find(params[:id])
    if @route.update(params[:route])
      flash[:notice] = "'#{@route.name}' updated"
      redirect_to locations_path
    else
      render 'edit'
    end
  end

  def destroy
    @route = Route.find(params[:id])
    @route.destroy
    flash[:notice] = "Route deleted"
    redirect_to locations_path
  end
end
