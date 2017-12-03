class SearchController < ApplicationController
  def index
  	@search = params[:search].split()
  	results = []
  	answers = Answer.tagged_with(@search, :any => true)
  	questions = Question.tagged_with(@search, :any => true)
  	#@post = Post.tagged_with(@search, :any => true).order(reputation: :desc)
  	results += answers + questions #+ @posts
  	results.sort! {|a, b| a.reputation <=> b.reputation}
  	@results = results.reverse
  end
end
