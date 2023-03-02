class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    user_keys = %i[first_name last_name address]
    devise_parameter_sanitizer.permit(:sign_up, keys: user_keys)

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: user_keys)
  end
end
