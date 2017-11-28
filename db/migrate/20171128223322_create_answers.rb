class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
    	t.references :user, index: true
    	t.references :question
    	t.text :content
    	t.integer :reputation
    	t.boolean :chosen, default: false 
      t.timestamps
    end
  end
end
