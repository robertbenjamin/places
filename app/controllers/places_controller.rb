class PlacesController < ApplicationController
	
	def index
	  @places = Place.all.order(:id).reverse
	  render :index
	end

	# def show
	#   @place = Place.find(params[:id])
	#   @songs = @artist.songs
	# end
end
