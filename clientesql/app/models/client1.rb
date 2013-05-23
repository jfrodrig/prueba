class Client1 < ActiveRecord::Base
  attr_accessible :name, :birth, :gender, :country, :city, :avatar, :image
  belongs_to :baseclientes
  mount_uploader :avatar, AvatarUploader
  
end
class MyUploader < CarrierWave::Uploader::Base
  def store_dir
    'public/my/upload/directory'
  end

end
class MyUploader < CarrierWave::Uploader::Base
  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
