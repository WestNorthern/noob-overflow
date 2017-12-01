class DropTags < ActiveRecord::Migration[5.1]
  def change
  	drop_table :tags
  end
end
