class Artist < ActiveRecord::Base
  has_many :tracks
  mount_uploader :cover, ImageUploader
  mount_uploader :profile_picture, ImageUploader
end
