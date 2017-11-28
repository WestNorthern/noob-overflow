class CreateReputations < ActiveRecord::Migration[5.1]
  def change
    create_table :reputations do |t|
    	t.references :user, index: true
    	t.references :reputatable, polymorphic: true, index: true
    	t.boolean :rep_given 
      t.timestamps
    end
  end
end
