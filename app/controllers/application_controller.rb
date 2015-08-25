class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def configure_permitted_parameters
   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email,:password,:password_confirmation,:first_name,:last_name, :username) }
  end

  def after_sign_in_path_for(resource)
    if resource.sign_in_count == 1
      new_profile_path
    else
       root_path
    end
  end

  def remaining_days
   ((current_user.created_at + 30.days).to_date - Date.today).round
  end

  def trial_expired?
    if remaining_days <= 0
      redirect_to upgrade_page_profiles_path
    else
     root_path
    end
  end
end
