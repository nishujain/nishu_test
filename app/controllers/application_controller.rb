class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  
  def configure_permitted_parameters
   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email,:password,:password_confirmation,:first_name,:last_name, :username, :mobile_number) }
  end

  def after_sign_in_path_for(resource)
    if resource.sign_in_count == 1
      new_profile_path
    else
       root_path
    end
  end
end
