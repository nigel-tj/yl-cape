class Artist < ActiveRecord::Base
  has_many :musics
  mount_uploader :image, ImageUploader
end
