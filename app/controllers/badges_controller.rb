class BadgesController < ApplicationController

def create
	@user = current_user
	@user.create_badge
	@user.badge.initiated = true
	redirect_to questions_path
end

def update
end

end
