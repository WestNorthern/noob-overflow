class AddHasFaveToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :has_fave, :boolean, default: false
  end
end
