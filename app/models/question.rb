class Question < ApplicationRecord
	belongs_to :user
	acts_as_taggable # Alias for acts_as_taggable_on :tags
	has_many :answers
  has_many :comments, as: :commentable
  has_many :reputations, as: :reputable
  
	def user
  	User.unscoped { super }
	end
	
end
