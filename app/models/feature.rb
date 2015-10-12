class Feature < ActiveRecord::Base
  #paginates_per 4 
  mount_uploader :image, ImageUploader
end
