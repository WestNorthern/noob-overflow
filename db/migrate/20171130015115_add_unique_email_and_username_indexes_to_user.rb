class AddUniqueEmailAndUsernameIndexesToUser < ActiveRecord::Migration[5.1]
  def change
  	remove_index :users, column: :email
  	remove_index :users, column: :username
    add_index :users, [:email, :deleted_at], unique: true
    add_index :users, [:username, :deleted_at], unique: true
  end
end
