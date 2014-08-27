class StopsController < ApplicationController
  def index
    @stops = Stop.all
  end

  def new
    @stop = Stop.new(params[:stop])
  end

  def create
    @stop = Stop.new(params[:stop])
    if @stop.save
      flash[:notice] = "Stop saved"
      redirect_to locations_path
    else
      render 'new'
    end
  end
end
