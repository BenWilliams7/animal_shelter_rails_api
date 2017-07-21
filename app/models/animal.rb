class Animal <ApplicationRecord
  validates_presence_of :name
  validates_presence_of :breed
  validates_presence_of :available

end
