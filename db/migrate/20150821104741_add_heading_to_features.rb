class AddHeadingToFeatures < ActiveRecord::Migration
  def change
    add_column :features, :heading, :string
  end
end
