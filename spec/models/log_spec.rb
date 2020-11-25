require 'rails_helper'

RSpec.describe Log, type: :model do
  let!(:log) { create(:log) }

  context "バリデーション" do
    it "有効な状態であること" do
      expect(log).to be_valid
    end

end
