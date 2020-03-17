class ArtistsController < ApplicationController
	def index
		@artists = Artist.all
	end
	def new
		@artist = Artist.new
	end
	def create
		artist = Artist.create(permitted_params)
		redirect_to artist
	end
	def show
		@artist = get_instance
	end
	def edit
		@artist = get_instance
	end
	def update
		artist = get_instance
		artist.update(permitted_params)
		redirect_to artist
	end
	def delete
		redirect_to artists_path
	end

	private

	def get_instance
		Artist.find(params[:id])
	end
	def permitted_params
		params.require(:artist).permit(:name, :bio)
	end
end
