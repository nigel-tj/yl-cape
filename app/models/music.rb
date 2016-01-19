class Music < ActiveRecord::Base
  belongs_to :admin_user
  mount_uploader :music, FileUploader
end
