class Users::RegistrationsController < DeviseTokenAuth::RegistrationsController
  skip_before_action :verify_authenticity_token
  # before_action :configure_sign_up_params, only: [:create]

  def create
    super do |resource|
      Rails.logger.info "++++++++++++++++++++++++++++++++++++++++++++++"
      resource.role = ROLES::ADMIN
      Rails.logger.info "++++++++++++++++++++++++++++++++++++++++++++++"
    end
  end
end
