require "rails_helper"

RSpec.describe "料理編集", type: :request do
  let!(:user) { create(:user) }
  let!(:dish) { create(:dish, user: user) }

  context "認可されたユーザーの場合" do
    it "レスポンスが正常に表示されること" do
      login_for_request(user)
      get edit_dish_path(dish)
      expect(response).to render_template('dishes/edit')
      patch dish_path(dish), params: { dish: { name: "イカの塩焼き",
                                               description: "冬に食べたくなる、身体が温まる料理です",
                                               portion: 1.5,
                                               tips: "ピリッと辛めに味付けするのがオススメ",
                                               reference: "https://cookpad.com/recipe/2798655",
                                               required_time: 30,
                                               popularity: 5 } }
      redirect_to dish
      follow_redirect!
      expect(response).to render_template('dishes/show')
    end
  end

  context "ログインしていないユーザーの場合" do
    it "ログイン画面にリダイレクトすること" do
      # 編集
      get edit_dish_path(dish)
      expect(response).to have_http_status "302"
      expect(response).to redirect_to login_path
      # 更新
      patch dish_path(dish), params: { dish: { name: "イカの塩焼き",
                                               description: "冬に食べたくなる、身体が温まる料理です",
                                               portion: 1.5,
                                               tips: "ピリッと辛めに味付けするのがオススメ",
                                               reference: "https://cookpad.com/recipe/2798655",
                                               required_time: 30,
                                               popularity: 5 } }
      expect(response).to have_http_status "302"
      expect(response).to redirect_to login_path
    end
  end
end