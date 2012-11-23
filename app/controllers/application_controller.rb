class ApplicationController < ActionController::Base
  protect_from_forgery

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def to_login
    redirect_to root_path if current_user.nil?
  end

  helper_method :current_user

end
