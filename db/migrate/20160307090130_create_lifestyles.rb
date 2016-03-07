class CreateLifestyles < ActiveRecord::Migration
  def change
    create_table :lifestyles do |t|
      t.string :image
      t.string :title
      t.string :link
      t.string :intro

      t.timestamps null: false
    end
  end
end
