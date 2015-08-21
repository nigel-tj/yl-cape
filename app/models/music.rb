class Music < ActiveRecord::Base
  belongs_to :artist
  mount_uploader :image, ImageUploader
end
