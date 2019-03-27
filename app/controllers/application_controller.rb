class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception --! do we need this?

  helper_method :current_user, :logged_in?

  def current_user
    if session[:user_id]
      Player.find(session[:user_id])
    else
      Player.new
    end
  end

  def logged_in?
    !!current_user.id
  end

#Authentication
  def authorized?
    if !logged_in?
      flash[:errors] = ["You are not logged in"]
      redirect_to login_path and return  # double redirect safeguard
    end
  end

#Authorisation
  def authorized_for(target_user_id)
    if current_user.id != target_user_id.to_i && current_user.admin != true
      flash[:errors] = ["You cannot view a page that does not belong to you!"]
      redirect_to players_path
    end
  end

end
