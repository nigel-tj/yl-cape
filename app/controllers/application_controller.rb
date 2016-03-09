class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end
  helper_method :current_user

  def current_admin_user
    return unless session[:admin_user_id]
    @current_user ||= AdminUser.find(session[:admin_user_id])
  end
  helper_method :current_admin_user

  def current_admin
    return unless session[:admin_id]
    @current_user ||= Admin.find(session[:admin_id])
  end
  helper_method :current_admin
  
end
