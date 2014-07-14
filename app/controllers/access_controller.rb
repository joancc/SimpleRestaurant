class AccessController < ApplicationController
  def index
  end

  def login
    #Login form
  end

  def signup_form
    @user = User.new
  end

  def signup
    @user = User.new(params.permit(:email, :password, :name))
    if @user.save
      flash[:notice] = "Sign up successful."
      redirect_to('/access/login')
    else
      flash[:error] = "Invalid input, please try again."
      render('signup')
    end
  end

  def attempt_login
    if params[:email].present? && params[:password].present?
      found_user = User.where(email: params[:email]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
    end

    if authorized_user
      # Uses cookies to mark user as signed in
      # session is just a special cookie?
      session[:user_id] = authorized_user.id
      session[:email] = authorized_user.email
      flash[:notice] = "Logged in successfully."
      redirect_to(controller: 'restaurants', action: 'index')
    else
      flash[:notice] = "Invalidad username or password."
      redirect_to(action: 'login')
    end
  end

  def logout
    session[:user_id] = nil
    session[:email] = nil
    flash[:notice] = "Logged out"
    redirect_to('/access/login')
  end

  private 

  def access_params
    params.require(:user).permit(:email, :password, :name)
  end
end
