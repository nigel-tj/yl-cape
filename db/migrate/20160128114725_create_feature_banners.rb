class CreateFeatureBanners < ActiveRecord::Migration
  def change
    create_table :feature_banners do |t|

      t.timestamps null: false
    end
  end
end
