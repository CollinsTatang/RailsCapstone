class ApplicationController < ActionController::Base
    helper_method :current_user

    private
  
    def require_login
      redirect_to new_session_path unless current_user
    end
  
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
end
