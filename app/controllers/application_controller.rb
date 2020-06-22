class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
      session[:name]
  end

  def index
    redirect_to new_session_path if current_user.nil?
  end
end
