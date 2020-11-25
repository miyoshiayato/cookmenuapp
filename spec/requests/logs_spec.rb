RSpec.describe "ログ機能", type: :request do
  let!(:user) { create(:user) }
  let!(:dish) { create(:dish, user: user) }
  let!(:log) { create(:log, dish: dish) }

  context "ログ登録" do
    context "ログインしている場合" do
    end
  end

  context "ログ削除" do
    context "ログインしている場合" do
    end
  end
end