class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  protected
  
  def authenticate_user!
    redirect_to new_user_session_path unless current_user
  end
  
  def authenticate_admin!
    redirect_to root_path unless current_user.admin?
  end
end
