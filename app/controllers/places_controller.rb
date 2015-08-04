class PlacesController < ApplicationController
	
  # index
  def index
    @user = User.find(session[:user]["id"])
    @places = User.find(session[:user]["id"]).places.reverse
  end

  # new
  def new
    @place = Place.new
  end

  # create
  def create
    @user = User.find(session[:user]["id"])
    @place = Place.create!(place_params)
    redirect_to place_path(@place)
  end

  #show
  def show
    @place = Place.find(params[:id])
  end

  # edit
  def edit
    @place = Place.find(params[:id])
  end


  # update
  def update
    @place = Place.find(params[:id])
    @place.update(place_params)

    redirect_to place_path(@place)
  end

  # destroy
  def destroy
    @place = Place.find(params[:id])
    @place.destroy
  end

  private
  def place_params
    params.require(:place).permit(:author, :title, :text, :date)
  end
end
