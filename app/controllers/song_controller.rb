class SongController < ApplicationController

            before_action :current_song


    def create
        Song.create(song_params)
        redirect_to genre_index_path
    end

    def index
        @songs = Song.all
    end


    def update
        @song.update(song_params)
        redirect_to @song
    end

    # def destroy
    #     @song.destroy
    #     redirect_to genre_path
    # end

    def current_song
        @artist = Artist.all
        @genre = Genre.all
        if params[:id]
            @song = Song.find(params[:id])
        else
            @song = Song.new
        end
    end

    def song_params
        song = params.require(:song)
        song = params[:song]
        song.permit(:name, :artist_id, :genre_id)
    end
end
