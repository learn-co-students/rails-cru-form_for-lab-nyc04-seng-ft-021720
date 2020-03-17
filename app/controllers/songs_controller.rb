class SongsController < ApplicationController
	def index
		@songs = Song.all
	end
	def new
		@song = Song.new
	end
	def create
		song = Song.create(permitted_params)
		redirect_to song
	end
	def show
		@song = get_instance
	end
	def edit
		@song = get_instance
	end
	def update
		song = get_instance
		song.update(permitted_params)
		redirect_to song
	end
	def delete
		redirect_to songs_path
	end

	private

	def get_instance
		Song.find(params[:id])
	end
	def permitted_params
		params.require(:song).permit(:name, :artist_id, :genre_id)
	end
end
