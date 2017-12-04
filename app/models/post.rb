class Post < ApplicationRecord
  belongs_to :user
  acts_as_taggable # Alias for acts_as_taggable_on :tags
  acts_as_taggable_on :tags
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :reputations, as: :reputatable
  
  class << self
    def markdown
      Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    end
  end
  
  def user
    User.unscoped { super }
  end
end
