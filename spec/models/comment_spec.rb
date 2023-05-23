require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    user = FactoryBot.create(:user)
    contact = FactoryBot.create(:contact)
    @comment = FactoryBot.build(:comment, user_id: user.id, contact_id: contact.id)
  end

  describe 'コメント作成' do
    context 'コメント作成できるとき' do
      it 'すべての値が正しく入力されていれば作成できる' do
        expect(@comment).to be_valid
      end
      it 'sleepingstarttimeが空でも作成できる' do
        @comment.sleepingstarttime = ''
        expect(@comment).to be_valid
      end
      it 'sleepingendtimeが空でも作成できる' do
        @comment.sleepingendtime = ''
        expect(@comment).to be_valid
      end
      it 'defecationtimeが空でも作成できる' do
        @comment.defecationtime = ''
        expect(@comment).to be_valid
      end
    end
    context 'コメント作成できないとき' do
    end
  end
end
