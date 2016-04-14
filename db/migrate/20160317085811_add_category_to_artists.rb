class AddCategoryToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :string, :category
  end
end
