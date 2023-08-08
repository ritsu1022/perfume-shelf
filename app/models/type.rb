class Type < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'パルファム' },
    { id: 3, name: 'オードパルファム' },
    { id: 4, name: 'オードトワレ' },
    { id: 5, name: 'オーデコロン' }
  ]

  include ActiveHash::Associations
  has_many :perfumes

  end