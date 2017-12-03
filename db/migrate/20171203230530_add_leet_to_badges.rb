class AddLeetToBadges < ActiveRecord::Migration[5.1]
  def change
    add_column :badges, :leet, :boolean
  end
end
