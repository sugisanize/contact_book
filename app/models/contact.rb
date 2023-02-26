class Contact < ApplicationRecord
  belongs_to :user

  validates :date, presence: true
  validates :temperature, presence: true
  validates :bedtime, presence: true, numericality: { only_integer: true }
  validates :wakeuptime, presence: true
  validates :defecationtimezone_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :defecationquality_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :bathing_id, presence: true, numericality: { other_than: 1, message: "can't be blank" }
  validates :mood_id, presence: true, numericality: { other_than: 1, message: "can't be blank" }
  validates :dinnertime, numericality: { only_integer: true }
  validates :breakfasttime, numericality: { only_integer: true }

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :defecationtimezone
  belongs_to :defecationquality
  belongs_to :bathing
  belongs_to :mood
end
