class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :track_title
      t.text :cover
      t.text :intro
      t.text :thumb

      t.timestamps null: false
    end
  end
end
