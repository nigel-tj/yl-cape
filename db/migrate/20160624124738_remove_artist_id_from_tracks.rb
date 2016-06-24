class RemoveArtistIdFromTracks < ActiveRecord::Migration
  def change
    remove_column :tracks, :artist_id, :string
  end
end
