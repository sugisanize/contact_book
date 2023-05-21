require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe 'コメント作成' do
    context 'コメント作成できるとき' do
    end
    context 'コメント作成できないとき' do
    end
  end
end
