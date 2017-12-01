class RemoveMeritFromUsers < ActiveRecord::Migration[5.1]
  def self.down
  	remove_column :users, :sash_id, :integer
  	remove_column :users, :level, :integer
  end
end
