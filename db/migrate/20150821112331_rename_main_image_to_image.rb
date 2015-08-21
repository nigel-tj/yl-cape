class RenameMainImageToImage < ActiveRecord::Migration
  def change
    rename_column :features, :main_image, :image
  end
end
