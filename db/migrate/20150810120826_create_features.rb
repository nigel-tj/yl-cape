class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.text :link
      t.text :main_image
      t.text :intro
      t.text :thumb

      t.timestamps null: false
    end
  end
end
