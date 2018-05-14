class BandsController < ApplicationController

  def index

    @bands = Band.all

    render :index

  end

  def show
    @band = Band.find_by(params[:id])

    render :show
  end

  def new
    @band = Band.new

    render :new
  end


end
