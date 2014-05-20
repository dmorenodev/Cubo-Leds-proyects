class Imagene < ActiveRecord::Base
  resourcify
  mount_uploader :image, ImageUploader
end
