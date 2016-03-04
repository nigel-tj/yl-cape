class Artist < ActiveRecord::Base
  belongs_to :admin_user
  has_many :musics
  mount_uploader :cover, ImageUploader
  mount_uploader :profile_picture, ImageUploader
end
