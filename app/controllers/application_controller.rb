class ApplicationController < ActionController::Base
 protect_from_forgery with: :exception
  include SessionsHelper

  private

    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
    def is_admin?
    logged_in? && current_user.role.label == "admin"
  end
  helper_method :is_admin?

  def is_standard?
    logged_in? && current_user.role.label == "standard"
  end
  helper_method :is_standard?
end
