class AddTrackToMusics < ActiveRecord::Migration
  def change
    add_column :musics, :track, :string
  end
end
