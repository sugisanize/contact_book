class Bathing < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'した' },
    { id: 3, name: 'しない' }
  ]

  include ActiveHash::Associations
  has_many :contacts
end
