class ApplicationController < ActionController::Base
  before_action :set_search 
  protect_from_forgery with: :exception
  include SessionsHelper
end

private
# ログイン済みユーザーかどうか確認
def logged_in_user
  unless logged_in?
        store_location
        flash[:danger] = "ログインしてください"
        redirect_to login_url
  end
end
