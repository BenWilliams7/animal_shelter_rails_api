class Animal <ApplicationRecord
  validates_presence_of :name
  validates_presence_of :breed
  validates_presence_of :available

  def self.search(search)
    @animal = Animal.find(:all, :conditions => ['name LIKE ?', '%#{params[:search]}%'])
  end

end
