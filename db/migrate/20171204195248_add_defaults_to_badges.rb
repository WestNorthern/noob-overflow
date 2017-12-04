class AddDefaultsToBadges < ActiveRecord::Migration[5.1]
  def self.up
  	change_column :badges, :leet, :boolean, default: false
  	change_column :badges, :codebae, :boolean, default: false
  end
end
