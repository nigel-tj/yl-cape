class RemoveCategoryToLifestyles < ActiveRecord::Migration
  def change
    drop_table :lifestyles
  end
end
