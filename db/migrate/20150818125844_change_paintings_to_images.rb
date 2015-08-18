class ChangePaintingsToImages < ActiveRecord::Migration
  def change
    rename_table :paintings, :images
  end
end
