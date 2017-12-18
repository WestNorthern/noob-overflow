class AddFavoriteToAnswers < ActiveRecord::Migration[5.1]
  def change
    add_column :answers, :favorite, :boolean, default: false
  end
end
