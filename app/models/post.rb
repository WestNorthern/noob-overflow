class Post < ApplicationRecord
  acts_as_taggable # Alias for acts_as_taggable_on :tags
  acts_as_taggable_on :tags

	class << self
    def markdown
      Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    end
  end
  
	belongs_to :user

	def user
  	User.unscoped { super }
	end
	
  has_many :comments, as: :commentable

  has_many :reputations, as: :reputatable

end
