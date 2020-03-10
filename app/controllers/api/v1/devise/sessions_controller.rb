class Api::V1::Devise::SessionsController < Devise::SessionsController
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    render_resource(resource)
  end

  def respond_to_on_destroy
    head :ok
  end
end