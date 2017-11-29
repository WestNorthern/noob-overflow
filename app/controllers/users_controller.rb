class UsersController < ApplicationController
  def index
  	@users = User.all.reverse

  end

  def show
  	@user = User.find_by(id: params[:id])
  end
end
