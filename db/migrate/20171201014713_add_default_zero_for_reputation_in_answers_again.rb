class AddDefaultZeroForReputationInAnswersAgain < ActiveRecord::Migration[5.1]
   def self.up
    change_column :answers, :reputation, :integer, default: 0
  end
 
  def self.down
    change_column :answers, :reputation, :integer
  end
end
