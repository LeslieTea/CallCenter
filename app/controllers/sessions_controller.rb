class SessionsController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    user = User.find_by username: params[:username]
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "You have successfully signed in."
      redirect_to script_path
    else
      flash[:error] = "Invalid username or password."
      redirect_to login_path
    end
  end
end
