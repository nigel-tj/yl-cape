class AddCategoryToGallery < ActiveRecord::Migration
  def change
    add_column :galleries, :category, :string
  end
end
