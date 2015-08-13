class PlacesController < ApplicationController

  # index
  def index
		# you likely don't need the extra variable @user here, I generally find it
		# more readable to say something like:

		# @places = current_user.places.reverse

		# if you need the user in the views, you can use `current_user` in the views
		# as well, since you have current_user as a `helper_method`

    @user = current_user
    @places = @user.places.reverse
  end

  # new
  def new
    @place = Place.new
  end

  # create
  def create
		# same here as previous comment
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
