class Team < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '０歳児クラス' },
    { id: 3, name: '１歳児クラス' },
    { id: 4, name: '２歳児クラス' },
    { id: 5, name: '３歳児クラス' },
    { id: 6, name: '４歳児クラス' },
    { id: 7, name: '５歳児クラス' },
    { id: 8, name: '６歳児クラス' }
  ]

  include ActiveHash::Associations
  has_many :users
end
