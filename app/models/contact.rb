class Contact < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :defecationtimezone
  belongs_to :defecationquality
  belongs_to :bathing
  belongs_to :mood

  belongs_to :user
  has_one :comment

  with_options presence: true do
    validates :contact_date
    validates :temperature, format: { with: /\A[0-9]{2}.[0-9]{1}\z/, message: 'is invalid. Include dot(.)' }
    validates :bedtime, format: { with: /\A[0-9]{2}:[0-9]{2}\z/, message: 'is invalid. Include colon(:)' }
    validates :wakeuptime, format: { with: /\A[0-9]{2}:[0-9]{2}\z/, message: 'is invalid. Include colon(:)' }
  end

  validates :bathing_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :mood_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :dinnertime, format: { with: /\A[0-9]{2}:[0-9]{2}\z/, message: 'is invalid. Include colon(:)' }, allow_blank: true
  validates :breakfasttime, format: { with: /\A[0-9]{2}:[0-9]{2}\z/, message: 'is invalid. Include colon(:)' }, allow_blank: true
  validates :picuptime, format: { with: /\A[0-9]{2}:[0-9]{2}\z/, message: 'is invalid. Include colon(:)' }, allow_blank: true
  validates :picupperson, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }, allow_blank: true
  validates :contact_text, length: { maximum: 500 }
end
