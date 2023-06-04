require 'rails_helper'

RSpec.describe Contact, type: :model do
  before do
    @contact = FactoryBot.build(:contact)
  end

  describe '連絡帳作成' do
    context '連絡帳作成できるとき' do
      it 'すべての値が正しく入力されていれば作成できる' do
        expect(@contact).to be_valid
      end
      it 'defecationtimezone_idが1でも作成できる' do
        @contact.defecationtimezone_id = '1'
        expect(@contact).to be_valid
      end
      it 'defecationquality_idが1でも作成できる' do
        @contact.defecationquality_id = '1'
        expect(@contact).to be_valid
      end
      it 'dinnertimeが空でも作成できる' do
        @contact.dinnertime = ''
        expect(@contact).to be_valid
      end
      it 'dinner_contentが空でも作成できる' do
        @contact.dinner_content = ''
        expect(@contact).to be_valid
      end
      it 'breakfasttimeが空でも作成できる' do
        @contact.breakfasttime = ''
        expect(@contact).to be_valid
      end
      it 'breakfast_contentが空でも作成できる' do
        @contact.breakfast_content = ''
        expect(@contact).to be_valid
      end
      it 'picuptimeが空でも作成できる' do
        @contact.picuptime = ''
        expect(@contact).to be_valid
      end
      it 'picuppersonが空でも作成できる' do
        @contact.picupperson = ''
        expect(@contact).to be_valid
      end
      it 'contact_textが空でも作成できる' do
        @contact.contact_text = ''
        expect(@contact).to be_valid
      end
    end
    context '連絡帳作成できないとき' do
      it 'contact_dateが空では作成できない' do
        @contact.contact_date = ''
        @contact.valid?
        expect(@contact.errors.full_messages).to include("Contact date can't be blank")
      end
      it 'temperatureが空では作成できない' do
        @contact.temperature = ''
        @contact.valid?
        expect(@contact.errors.full_messages).to include("Temperature can't be blank")
      end
      it 'bedtimeが空では作成できない' do
        @contact.bedtime = ''
        @contact.valid?
        expect(@contact.errors.full_messages).to include("Bedtime can't be blank")
      end
      it 'wakeuptimeが空では作成できない' do
        @contact.wakeuptime = ''
        @contact.valid?
        expect(@contact.errors.full_messages).to include("Wakeuptime can't be blank")
      end
      it 'bathing_idが1では作成できない' do
        @contact.bathing_id = '1'
        @contact.valid?
        expect(@contact.errors.full_messages).to include("Bathing can't be blank")
      end
      it 'mood_idが1では作成できない' do
        @contact.mood_id = '1'
        @contact.valid?
        expect(@contact.errors.full_messages).to include("Mood can't be blank")
      end
      it 'temperatureにドットが含まれていないと作成できない' do
        @contact.temperature = '366'
        @contact.valid?
        expect(@contact.errors.full_messages).to include('Temperature is invalid. Include dot(.)')
      end
      it 'bedtimeにコロンが含まれていないと作成できない' do
        @contact.bedtime = '2000'
        @contact.valid?
        expect(@contact.errors.full_messages).to include('Bedtime is invalid. Include colon(:)')
      end
      it 'wakeuptimeにコロンが含まれていないと作成できない' do
        @contact.wakeuptime = '0600'
        @contact.valid?
        expect(@contact.errors.full_messages).to include('Wakeuptime is invalid. Include colon(:)')
      end
      it 'dinnertimeにコロンが含まれていないと作成できない' do
        @contact.dinnertime = '1800'
        @contact.valid?
        expect(@contact.errors.full_messages).to include('Dinnertime is invalid. Include colon(:)')
      end
      it 'dinner_contentが51文字以上では作成できない' do
        @contact.dinner_content = Faker::Lorem.characters(number: 51)
        @contact.valid?
        expect(@contact.errors.full_messages).to include('Dinner content is too long (maximum is 50 characters)')
      end
      it 'breakfasttimeにコロンが含まれていないと作成できない' do
        @contact.breakfasttime = '0700'
        @contact.valid?
        expect(@contact.errors.full_messages).to include('Breakfasttime is invalid. Include colon(:)')
      end
      it 'contact_textが501文字以上では作成できない' do
        @contact.contact_text = Faker::Lorem.characters(number: 501)
        @contact.valid?
        expect(@contact.errors.full_messages).to include('Contact text is too long (maximum is 500 characters)')
      end
      it 'userが紐付いていないと作成できない' do
        @contact.user = nil
        @contact.valid?
        expect(@contact.errors.full_messages).to include('User must exist')
      end
    end
  end
end
