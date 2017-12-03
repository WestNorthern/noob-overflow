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
	redirect_to @user
end

end
