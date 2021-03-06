class ReputationsController < ApplicationController
	before_action :find_reputatable

  def create
  	@rep_user = @reputatable.user
  	@user = current_user
  	@reputation = Reputation.new(reputation_params)
  	if !Reputation.where(user_id: @user.id, reputatable_id: @reputatable.id, rep_given: true).exists? and @reputation.rep_given == true
  		@reputation.save
  		@rep_user.increment!('reputation', 5)
  		@reputatable.increment!('reputation', 5)
  		@user.increment!('reputation', -2)
      respond_to do |format|
        format.js
      end
  	elsif !Reputation.where(user_id: @user.id, reputatable_id: @reputatable.id, rep_given: false).exists? and @reputation.rep_given == false
	 		@reputation.save
	  	@rep_user.increment!('reputation', -5)
      if @rep_user.badge
        if @rep_user.reputation < -50 and @rep_user.badge.dunce == false
          @rep_user.badge.dunce = true
        end
      end
	  	@reputatable.increment!('reputation', -5)
	  	@user.increment!('reputation', -10)
      respond_to do |format|
        format.js
      end
	  else
      render partial: 'reputations/reputation', locals: {rep_object: @reputatable}
      flash[:alert] = "You've already given rep to this post!"
	  end
  end

  def find_reputatable
  	@reputatable = Post.find_by(id: reputation_params[:reputatable_id]) if reputation_params[:reputatable_type] == 'Post'
    @reputatable = Question.find_by(id: reputation_params[:reputatable_id]) if reputation_params[:reputatable_type] == 'Question'
    @reputatable = Answer.find_by(id: reputation_params[:reputatable_id]) if reputation_params[:reputatable_type] == 'Answer'
  end

  private
  def reputation_params
  	params.require(:reputation).permit(:user_id, :reputatable_type, :reputatable_id, :rep_given)
  end
end
