class SearchController < ApplicationController
  def index
  	@search = params[:search].split()
  	@results = Answer.tagged_with(@search, :any => true).order(reputation: :desc)
  end
end
