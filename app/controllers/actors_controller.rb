class ActorsController < ApplicationController
  before_action :set_actor, only: [:show, :create, :update, :destroy]
  before_action :actor_params, only: [:create, :update]

  def index
    @actors = Actor.all
  end

  def show
    @movies = @actor.movies
  end

  private

  def set_actor
    @actor = Actor.find(params[:id])
  end

  def actor_params
    params.require(:actor).permit(:first_name, :last_name, :bio, :image)
  end

end
