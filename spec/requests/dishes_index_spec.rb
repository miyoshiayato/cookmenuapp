require "rails_helper"

RSpec.describe "料理一覧ページ", type: :request do
  let!(:user) { create(:user) }
  let!(:dish) { create(:dish, user: user) }

  context "ログインしているユーザーの場合" do
    
  end
end