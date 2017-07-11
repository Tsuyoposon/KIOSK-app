class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    if session[:user_id].blank? || params[:q] === 0
      session[:user_id] = 0
    elsif params[:q].present? and (session[:user_id] != params[:q])
      session[:user_id] = params[:q]

    end
    @current_user ||= User.find_by(id: session[:user_id])
  end


  helper_method :current_user

end
