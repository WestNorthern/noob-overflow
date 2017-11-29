class Answer < ApplicationRecord
	belongs_to :user

	def user
  	User.unscoped { super }
	end
	
	belongs_to :question
  has_many :comments, as: :commentable
end
