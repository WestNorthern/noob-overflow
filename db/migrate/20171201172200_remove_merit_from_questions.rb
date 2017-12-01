class RemoveMeritFromQuestions < ActiveRecord::Migration[5.1]
  def self.down
  	remove_column :questions, :sash_id, :integer
  	remove_column :questions, :level, :integer
  end
end
