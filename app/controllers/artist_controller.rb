class ArtistController < ApplicationController

    before_action :current_artist


    def create
        Artist.create(artist_params)
        redirect_to artist_index_path
    end
    def index
        @artists = Artist.all
    end


    def update
        @artist.update(artist_params)
        redirect_to @artist
    end

    # def destroy
    #     @artist.destroy
    #     redirect_to artists_path
    # end

    def current_artist
        if params[:id]
            @artist = Artist.find(params[:id])
        else
            @artist = Artist.new
        end
    end

    def artist_params
        artist = params.require(:artist)
        artist = params[:artist]
        artist.permit(:name, :bio)
    end
end
