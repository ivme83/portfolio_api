class ApplicationController < ActionController::API
        include ActionController::RequestForgeryProtection
        include DeviseTokenAuth::Concerns::SetUserByToken

  before_action :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery unless: -> { request.format.json? }

  protected
      
  def configure_permitted_parameters
    # Permit the `subscribe_newsletter` parameter along with the other
    # sign up parameters.
    devise_parameter_sanitizer.permit(:sign_up, keys: [:registration, :first_name, :last_name])
  end

end
