class Gallery < ActiveRecord::Base
  #attr_accessible :name
  has_many :images
  mount_uploader :image, ImageUploader
end
