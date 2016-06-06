class DropMusic < ActiveRecord::Migration
  def change
    drop_table :musics
  end
end
