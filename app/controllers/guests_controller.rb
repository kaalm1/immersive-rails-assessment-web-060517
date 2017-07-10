class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def new
    @appearance = Appearance.new
    @rating = Rating.new
  end

  def create
    @appearance = Appearance.new
    @guest = Guest.find(appearance_params[:guest_id])
    @guest.appearances << @appearance
    Episode.find(appearance_params[:episode_id]).appearances << @appearance
    @user = User.find(1) #incorrect -- but only through sessions can I figure out the user so for now its this
    @rating = Rating.new
    @appearance.ratings << @rating
    @user.ratings << @rating

    @appearance.save
    @rating.save

    redirect_to guest_path(@guest)
  end

  def show
    @guest = Guest.find(params[:id])
  end

  private
  def appearance_params
    params.require(:appearance).permit(:episode_id,:guest_id)
  end
end
