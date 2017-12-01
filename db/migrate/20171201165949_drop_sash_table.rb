class DropSashTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :sashes
  end
end
