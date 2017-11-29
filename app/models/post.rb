class Post < ApplicationRecord
	belongs_to :user

	def user
  	User.unscoped { super }
	end
	
  has_many :comments, as: :commentable

end
