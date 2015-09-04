class AddCategoryToMusics < ActiveRecord::Migration
  def change
    add_column :musics, :category, :string
  end
end
