class LogsController < ApplicationController
  before_action :logged_in_user

  def create
    @dish = Dish.find(params[:dish_id])
    @log = @dish.logs.build(content: params[:log][:content])
    @log.save
    flash[:success] = "クックログを追加しました！"
    redirect_to dish_path(@dish)
  end

  def destroy
  end
end
