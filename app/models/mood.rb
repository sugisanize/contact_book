class Mood < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '良い' },
    { id: 3, name: '悪い' }
  ]

  include ActiveHash::Associations
  has_many :contacts
  has_many :comments
end
