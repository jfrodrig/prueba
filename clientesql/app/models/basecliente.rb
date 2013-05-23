class Basecliente < ActiveRecord::Base
   mount_uploader :image, ImageUploader
end
