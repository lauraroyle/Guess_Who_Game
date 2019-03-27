class SessionsController < ApplicationController

  # login
  def new
  end

  # post from login
  def create
    user = Player.find_by(name: params[:name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to player_path(user.id)
    else
      flash[:errors] = ["invalid username or password"]
      redirect_to login_path
    end
  end

  # logout
  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
