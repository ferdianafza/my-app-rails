class Api::V1::Devise::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  def create
    build_resource(sign_up_params)

    resource.save
    render_resource(resource)
  end

  protected

  def sign_up_params
    # devise_parameter_sanitizer.sanitize(:sign_up)
    params.require(:user).permit(:fullname, :email, :password, :password_confirmation)
  end
end
