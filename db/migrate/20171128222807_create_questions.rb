class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
    	t.references :user, index: true
    	t.string :title
    	t.text :content
    	t.boolean :answered, default: false
    	t.integer :reputation, default: 0
      t.timestamps
    end
  end
end
