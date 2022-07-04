class MoviesController < ApplicationController
    def index 
        movies = Movie.all 
        render json: movies, status: 200
    end

    def show
        movie = Movie.find_by!(id: params[:id])
        render json: movie
    end
end
