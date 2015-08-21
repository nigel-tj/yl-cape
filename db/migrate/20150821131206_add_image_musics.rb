class AddImageMusics < ActiveRecord::Migration
  def change
    add_column :musics, :image, :string
  end
end
