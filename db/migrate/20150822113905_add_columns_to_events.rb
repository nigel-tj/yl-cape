class AddColumnsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :date, :date
    add_column :events, :start_time, :string
    add_column :events, :venue, :string
    add_column :events, :image, :string
  end
end
