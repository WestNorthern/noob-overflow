class DropMeritScorePointsTable < ActiveRecord::Migration[5.1]
  def change
  	drop_table :merit_score_points
  end
end
