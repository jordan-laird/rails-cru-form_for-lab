class GenreController < ApplicationController

        before_action :current_genre


    def create
        Genre.create(genre_params)
        redirect_to genre_index_path
    end
    def index
        @genres = Genre.all
    end


    def update
        @genre.update(genre_params)
        redirect_to @genre
    end

    # def destroy
    #     @genre.destroy
    #     redirect_to genre_path
    # end

    def current_genre
        if params[:id]
            @genre = Genre.find(params[:id])
        else
            @genre = Genre.new
        end
    end

    def genre_params
        genre = params.require(:genre)
        genre = params[:genre]
        genre.permit(:name)
    end
end
