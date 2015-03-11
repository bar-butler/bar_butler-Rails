class SessionsController < Devise::SessionsController
  skip_before_action :require_no_authentication, :only => [:create]

  # Devise::PasswordsController
  def create
    @user = self.resource = warden.authenticate(auth_options)
    if @user
      sign_in(resource_name, resource, store: false)
      render json: { user: current_user }, status: :ok
    else
      render json: { error: "Authentication Failed!" }, status: :unauthenticated
    end
  end
  
end
