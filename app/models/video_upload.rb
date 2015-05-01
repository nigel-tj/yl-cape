class VideoUpload < ActiveType::Object
  attribute :description, :text
  attribute :file, :varchar
  attribute :title, :varchar
  validates :file, presence: true
  validates :title, presence: true
end
