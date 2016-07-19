class Track < ActiveRecord::Base
  belongs_to :album
  mount_uploader :image, ImageUploader
  mount_uploader :track, FileUploader
end
