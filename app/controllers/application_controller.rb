class ApplicationController < ActionController::Base
  #protect_from_forgery

  protected
  def user_is_authenticated
    if !user_signed_in?
      flash[:alert] = "Please login"
      redirect_to new_user_session_path
      return
    end
  end
end
