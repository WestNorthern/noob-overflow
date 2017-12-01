class AddTagsToAnswers < ActiveRecord::Migration[5.1]
  def change
    add_column :answers, :tags, :string
  end
end
