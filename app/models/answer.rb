class Answer < ApplicationRecord
	belongs_to :user
	belongs_to :question
  has_many :comments, as: :commentable, dependent: :destroy
  acts_as_taggable # Alias for acts_as_taggable_on :tags
  acts_as_taggable_on :tags

  has_many :reputations, as: :reputable

	def user
  	User.unscoped { super }
	end
	
end
