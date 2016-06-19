class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  before_action :movie_params, only: [:create, :update]

  def index
    @movies = Movie.all
  end

  def show
    @actors = @movie.actors
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :release_year, :plot, :image)
  end

end
