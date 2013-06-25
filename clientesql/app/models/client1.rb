class Client1 < ActiveRecord::Base
  #attr_accessible :name, :birth, :gender, :country, :city, :avatar, :image
  belongs_to :baseclientes
  mount_uploader :avatar, AvatarUploader
def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end

  def cumplio_annos?
    # Reglas del negocio
    return( true )
  end
end

