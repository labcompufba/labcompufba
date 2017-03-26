class DashboardController < ApplicationController
  
  def index
    @users = User.all.excludes(:id => current_user.id)
  end
end
