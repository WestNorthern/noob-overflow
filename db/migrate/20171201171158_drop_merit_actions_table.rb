class DropMeritActionsTable < ActiveRecord::Migration[5.1]
  def change
  	drop_table :merit_actions
  end
end
