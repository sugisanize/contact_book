class Defecationtimezone < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '昨晩' },
    { id: 3, name: '今朝' }
  ]

  include ActiveHash::Associations
  has_many :contacts
end
