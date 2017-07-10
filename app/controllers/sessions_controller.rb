class SessionsController < ApplicationController

  def new
    @appearance = Appearance.new
    @rating = Rating.new
  end

  def create
    @appearance = Appearance.create(appearance_params)
    @rating = Rating.new(rating_params)
    @user = User.find()
    @user.ratings << @rating
    @appearance.ratings << @rating
    @rating.save
    redirect_to guest_path(@appearance)
  end

  private
  def appearance_params
    params.require(:appearance).permit(:name,:occupation)
  end

  def rating_params
    params.require(:appearance).permit(:rating)
  end
end
