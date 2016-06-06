class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title
      t.integer :artist_id
      t.string :cover
      t.string :intro
      t.string :thumb

      t.timestamps null: false
    end
  end
end
