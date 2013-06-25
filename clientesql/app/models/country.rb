class Country < ActiveRecord::Base
  # Esto es para Rails < 4
  #attr_accessible :name, :continent
  
  def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end
end
