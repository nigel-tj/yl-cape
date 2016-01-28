class FeatureBanner < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
