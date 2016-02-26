class Album < ActiveRecord::Base
  belongs_to :admin_user
  has_many :musics
  mount_uploader :cover, ImageUploader
end
