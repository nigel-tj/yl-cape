class Music < ActiveRecord::Base
  belongs_to :admin_user
  mount_uploader :image, ImageUploader
  mount_uploader :track, FileUploader
end
