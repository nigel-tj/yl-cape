class AddingImageUrlToEvent < ActiveRecord::Migration
  def change
     add_column :events, :image_link, :string
  end
end
