class SessionsController < Devise::SessionsController

  # Devise::PasswordsController
  def create
    self.resource = warden.authenticate(auth_options)
    if self.resource
      sign_in(resource_name, resource, store: false)
      render json: { user: current_user }, status: :ok
    else
      render json: { error: "Authentication Failed!" }, status: :unauthenticated
    end
  end
end
