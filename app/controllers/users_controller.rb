class UsersController < ApplicationController
  def dashboard
    if current_user
      @restaurants = current_user.restaurants
    else
      flash[:notice] = "You must be signed in to view your dashboard."
      redirect_to new_user_session_path
    end
  end
end
