class AddDefaultZeroForReputationInAnswers < ActiveRecord::Migration[5.1]
  def change
  	change_column :answers, :reputation, :integer, defualt: 0
  end
end
