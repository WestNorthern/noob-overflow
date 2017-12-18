class FavoritesController < ApplicationController


def update
	@answer = Answer.find(params[:id])
	if @answer.favorite == false
		@answer.favorite = true
		@answer.save
		@answer.question.has_fave = true
		@answer.question.save
	else
		@answer.favorite = false
		@answer.save
		@answer.question.has_fave = false
		@answer.question.save
	end
end


end