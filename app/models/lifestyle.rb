class Lifestyle < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
