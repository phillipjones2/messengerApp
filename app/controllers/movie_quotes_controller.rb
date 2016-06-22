class MovieQuotesController < ApplicationController

  def create
    @movie = Movie.find(params[:movie_id])
    @movie_quote = @movie.movie_quotes.create(movie_quote_params)
    redirect_to movie_path(@movie)
  end

  private

  def movie_quote_params
    params.require(:movie_quote).permit(:source, :quote)
  end

end
