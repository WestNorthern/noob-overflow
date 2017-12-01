class RemoveMeritFromPosts < ActiveRecord::Migration[5.1]
 def self.down
  	remove_column :posts, :sash_id, :integer
  	remove_column :posts, :level, :integer
  end
end
