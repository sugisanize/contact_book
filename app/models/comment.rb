class Comment < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :defecationquality
  belongs_to :mood
  belongs_to :lunchamount
  belongs_to :snackamount

  belongs_to :user
  belongs_to :contact

  validates :sleepingstarttime, format: { with: /\A[0-9]{2}:[0-9]{2}\z/, message: 'is invalid. Include colon(:)' },
                                allow_blank: true
  validates :sleepingendtime, format: { with: /\A[0-9]{2}:[0-9]{2}\z/, message: 'is invalid. Include colon(:)' },
                              allow_blank: true
  validates :defecationtime, format: { with: /\A[0-9]{2}\z/, message: 'is invalid.' }, allow_blank: true
  validates :comment_text, length: { maximum: 500 }
end
