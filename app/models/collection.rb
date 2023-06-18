class Collection < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :title, length: { maximum: 50 }
    validates :price
  end
end
