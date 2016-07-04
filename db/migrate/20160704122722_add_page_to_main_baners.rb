class AddPageToMainBaners < ActiveRecord::Migration
  def change
    add_column :main_banners, :page, :string
  end
end
