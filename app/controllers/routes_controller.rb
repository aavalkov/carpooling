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
end
