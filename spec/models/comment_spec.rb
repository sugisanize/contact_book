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
      it 'defecationquality_idが1でも作成できる' do
        @comment.defecationquality_id = '1'
        expect(@comment).to be_valid
      end
      it 'mood_idが1でも作成できる' do
        @comment.mood_id = '1'
        expect(@comment).to be_valid
      end
      it 'lunchamount_idが1でも作成できる' do
        @comment.lunchamount_id = '1'
        expect(@comment).to be_valid
      end
      it 'snackamount_idが1でも作成できる' do
        @comment.snackamount_id = '1'
        expect(@comment).to be_valid
      end
      it 'comment_textが空でも作成できる' do
        @comment.comment_text = ''
        expect(@comment).to be_valid
      end
    end
    context 'コメント作成できないとき' do
      it 'sleepingstarttimeにコロンが含まれていない文字では作成できない' do
        @comment.sleepingstarttime = '1200'
        @comment.valid?
        expect(@comment.errors.full_messages).to include('Sleepingstarttime is invalid. Include colon(:)')
      end
      it 'sleepingendtimeにコロンが含まれていない文字では作成できない' do
        @comment.sleepingendtime = '1400'
        @comment.valid?
        expect(@comment.errors.full_messages).to include('Sleepingendtime is invalid. Include colon(:)')
      end
      it 'defecationtimeに半角数字1桁では作成できない' do
        @comment.defecationtime = '9'
        @comment.valid?
        expect(@comment.errors.full_messages).to include('Defecationtime is invalid.')
      end
      it 'comment_textが501文字以上では作成できない' do
        @comment.comment_text = Faker::Lorem.characters(number: 501)
        @comment.valid?
        expect(@comment.errors.full_messages).to include('Comment text is too long (maximum is 500 characters)')
      end
      it 'userが紐付いていないと作成できない' do
        @comment.user = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include('User must exist')
      end
      it 'contactが紐付いていないと作成できない' do
        @comment.contact = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include('Contact must exist')
      end
    end
  end
end
