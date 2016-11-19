class IceCream < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
end
