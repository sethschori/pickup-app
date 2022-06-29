class ApplicationController < ActionController::Base
  include Passwordless::ControllerHelpers

  helper_method :current_user
  helper_method :require_user!

  private

  def current_user
    @current_user ||= authenticate_by_session(User)
  end

  def require_user!
    return if current_user
    redirect_to root_path, flash: { error: 'Please sign in before attempting to access this.' }
  end
end
