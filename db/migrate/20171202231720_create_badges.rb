class CreateBadges < ActiveRecord::Migration[5.1]
  def change
    create_table :badges do |t|
    	t.references :user
    	t.boolean :initiated, default: false
    	t.boolean :noob, default: false
    	t.boolean :pleb, default: false
    	t.boolean :hacker, default: false
    	t.boolean :ninja, default: false
    	t.boolean :dunce, default: false
    	t.boolean :seeker, default: false
    	t.boolean :helpful, default: false
    	t.boolean :mastermind, default: false
    	t.boolean :extrovert, default: false

      t.timestamps
    end
  end
end
