class Animal <ApplicationRecord
  validates_presence_of :name
  validates_presence_of :breed
  validates_presence_of :available

  scope :name_search, -> (name) { where('name LIKE ?', '%#{name}%')}

end
