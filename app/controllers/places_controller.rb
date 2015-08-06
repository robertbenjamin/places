class PlacesController < ApplicationController
	
  # index
  def index
    @user = current_user
    @places = @user.places.reverse
  end

  # new
  def new
    @place = Place.new
  end

  # create
  def create
    @user = current_user
    @place = @user.places.create!(place_params)
    redirect_to user_places_path
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

    redirect_to user_place_path(place_params)
  end

  # destroy
  def destroy
    @place = Place.find(params[:id])
    @place.destroy

    redirect_to user_places_path()
  end

  private
  def place_params
    params.require(:place).permit(:location, :photo_url, :note)
  end
end
