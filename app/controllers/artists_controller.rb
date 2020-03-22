class ArtistsController < ApplicationController
    before_action :find_artist_by_id, only: [:show, :edit, :update]

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.new(artist_params)
        @artist.save
        redirect_to @artist
    end

    def update
        @artist.update(artist_params)
        @artist.save
        redirect_to @artist
    end

    private

    def find_artist_by_id
        @artist = Artist.find(params[:id])
    end

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end

end
