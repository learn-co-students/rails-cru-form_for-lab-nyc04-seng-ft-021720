class GenresController < ApplicationController
    before_action :find_genre_by_id, only: [:show, :edit, :update]

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.new
        @genre.update(genre_params)
        @genre.save
        redirect_to @genre
    end

    def update
        @genre.update(genre_params)
        @genre.save
        redirect_to @genre
    end

    private

    def find_genre_by_id
        @genre = Genre.find(params[:id])
    end

    def genre_params
        params.require(:genre).permit(:name)
    end

end
