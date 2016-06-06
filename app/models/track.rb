class Track < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  mount_uploader :track, FileUploader
end
