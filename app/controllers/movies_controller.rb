class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.new(movie_params)
		if @movie.save
			redirect_to movies_path
		else
			render new_movies_path, error: "Could not create the movie"
		end
	end

	private

	def movie_params
		params.require(:movie).permit(:title, :year)
	end
end
