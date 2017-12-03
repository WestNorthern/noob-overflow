class BadgesController < ApplicationController

def create
	@user = current_user
	@user.create_badge
	redirect_to @user
end

def update
	@user = current_user
	puts "Here are the params"
	p params

	if params[:format] == 'initiated'
		@user.badge.initiated = true
		@user.badge.save
	end

	if params[:format] == 'noob'
		@user.badge.noob = true
		@user.badge.save
	end

	if params[:format] == 'dunce'
		@user.badge.dunce = true
		@user.badge.save
	end


	if params[:format] == 'codebae'
		@user.badge.codebae = true
		@user.badge.save
	end


	if params[:format] == 'seeker'
		@user.badge.seeker = true
		@user.badge.save
	end


	if params[:format] == 'leet'
		@user.badge.leet = true
		@user.badge.save
	end


	if params[:format] == 'pleb'
		@user.badge.pleb = true
		@user.badge.save
	end


	if params[:format] == 'hacker'
		@user.badge.hacker = true
		@user.badge.save
	end


	if params[:format] == 'helpful'
		@user.badge.helpful = true
		@user.badge.save
	end


	if params[:format] == 'extrovert'
		@user.badge.extrovert = true
		@user.badge.save
	end


	if params[:format] == 'ninja'
		@user.badge.ninja = true
		@user.badge.save
	end


	if params[:format] == 'mastermind'
		@user.badge.mastermind = true
		@user.badge.save
	end


	redirect_to @user
end

end
