class Album < ActiveRecord::Base
  has_many :tracks
  mount_uploader :cover, ImageUploader
end
