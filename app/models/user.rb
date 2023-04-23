class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :child_first_name, presence: true, format: { with: /\A[ぁ-ん一]+\z/ }
  validates :team_id, numericality: { other_than: 1, message: "can't be blank" }

  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  validates :password, format: { with: VALID_PASSWORD_REGEX }, allow_blank: true

  with_options presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ } do
    validates :last_name
    validates :first_name
  end

  with_options presence: true, format: { with: /\A[ァ-ヶ一]+\z/ } do
    validates :last_name_kana
    validates :first_name_kana
  end

  has_many :contacts

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :team

  acts_as_paranoid
end
