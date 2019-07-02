class ApplicationController < ActionController::Base
  def new_session_path(scope)
    new_user_session_path
  end

  def verify_logged_in
    unless user_signed_in?
      redirect_to '/sign_in'
    end
  end
end
