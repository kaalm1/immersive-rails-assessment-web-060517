class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def new
    @episode = Episode.new
  end

  def create
    @episode = Episode.create(episode_params)
    redirect_to guest_path(@episode)
  end

  def show
    @episode = Episode.find(params[:id])
  end

  private
  def guest_params
    params.require(:episode).permit(:date,:number)
  end
end
