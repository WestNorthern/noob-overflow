class HomeController < ApplicationController
  def index
  	@hourly_score = HourlyScore.new
  	@user = current_user
  end
end
