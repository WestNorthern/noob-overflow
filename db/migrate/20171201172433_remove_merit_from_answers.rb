class RemoveMeritFromAnswers < ActiveRecord::Migration[5.1]
 def self.down
  	remove_column :answers, :sash_id, :integer
  	remove_column :answers, :level, :integer
  end
end
