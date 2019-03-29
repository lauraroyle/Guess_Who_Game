class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception --! do we need this?
  helper_method :current_user, :logged_in?

  #Welcome
    def welcome
      render :welcome
    end

  def current_player
    if session[:player_id]
      Player.find(session[:player_id])
    else
      Player.new
    end
  end

  def logged_in?
    !!current_player.id
  end

#Authentication
  def authorized?
    if !logged_in?
      flash[:errors] = ["You are not logged in"]
      redirect_to login_path and return  # double redirect safeguard
    end
  end

end
