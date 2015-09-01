class Event < ActiveRecord::Base
  has_many :standard_tickets
  has_many :vip_tickets
  has_many :users
  mount_uploader :image, ImageUploader
end
