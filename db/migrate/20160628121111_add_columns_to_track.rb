class AddColumnsToTrack < ActiveRecord::Migration
  def change
    add_column :tracks, :string, :track
  end
end
