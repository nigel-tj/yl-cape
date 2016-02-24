class AddCoverAndProfilePictureToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :cover, :string
    add_column :artists, :profile_picture, :string
  end
end
