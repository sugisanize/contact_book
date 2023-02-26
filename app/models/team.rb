class Team < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'つぼみ組' },
    { id: 3, name: 'なのはな組' },
    { id: 4, name: 'れんげ組' },
    { id: 5, name: 'すみれ組' },
    { id: 6, name: 'もも組' },
    { id: 7, name: 'ひまわり組' },
    { id: 8, name: 'チューリップ組' },
    { id: 9, name: 'たんぽぽ組' },
    { id: 10, name: 'きく組' },
    { id: 11, name: 'さくら組' }
  ]

  include ActiveHash::Associations
  has_many :users
end
