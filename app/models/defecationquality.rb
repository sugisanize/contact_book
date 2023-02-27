class Defecationquality < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '普通' },
    { id: 3, name: '軟かい' },
    { id: 4, name: '下痢' }
  ]

  include ActiveHash::Associations
  has_many :contacts
end
