class GenresController < ApplicationController
	def index
		@genres = Genre.all
	end
	def new
		@genre = Genre.new
	end
	def create
		genre = Genre.create(permitted_params)
		redirect_to genre
	end
	def show
		@genre = get_instance
	end
	def edit
		@genre = get_instance
	end
	def update
		genre = get_instance
		genre.update(permitted_params)
		redirect_to genre
	end
	def delete
		redirect_to genres_path
	end

	private

	def get_instance
		Genre.find(params[:id])
	end
	def permitted_params
		params.require(:genre).permit(:name)
	end
end
