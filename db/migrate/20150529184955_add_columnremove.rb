class AddColumnremove < ActiveRecord::Migration
  def change
    remove_column :users, :token, :string
    remove_column :users, :uid, :string
  end
end
