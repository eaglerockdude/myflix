class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # auto login for possible future use
      #session[:user_id] = @user.id
      redirect_to login_path, notice: "Thank you for signing up..you may login now!"
    # TODO change redirect to Login when login is done
    else
      render "new"
    end

  end

  private
  def user_params
    params.require(:user).permit!
  end

end