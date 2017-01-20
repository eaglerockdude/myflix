class SessionsController < ApplicationController

  skip_before_action :require_login, only: [:new, :create]

  def new
    redirect_to home_path if logged_in?
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:success] = "Welcome  #{@user.full_name},  you've logged in."
      redirect_to home_path
    else
      flash[:error] = "There is something wrong with your username or password.  Please try again."
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You have logged out."
    redirect_to root_path
  end
end
