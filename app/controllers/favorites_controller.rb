class FavoritesController < ApplicationController
  before_action :logged_in_user

  def create
    @dish = Dish.find(params[:dish_id])
    @user = @dish.user
    current_user.favorite(@dish)
    respond_to do |format|
      format.html { redirect_to request.referrer || root_url }
      format.js
  end

  def destroy
  end
end
