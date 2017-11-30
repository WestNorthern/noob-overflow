class Post < ApplicationRecord

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

end
