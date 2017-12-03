class AddCodebaeToBadges < ActiveRecord::Migration[5.1]
  def change
    add_column :badges, :codebae, :boolean
  end
end
