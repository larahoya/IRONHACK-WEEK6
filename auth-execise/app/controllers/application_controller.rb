class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end 

  def authorize_user
    unless current_user
      flash[:message] = "Sign up please!"
      redirect_to '/login'
    end
  end

  def admin_only
    unless current_user && current_user.role == 'admin'
      flash[:message] = 'Access Denied'
      redirect_to '/'
    end
  end

end
