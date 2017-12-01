class DropMeritActivityLogTable < ActiveRecord::Migration[5.1]
  def change
  	drop_table :merit_activity_logs
  end
end
