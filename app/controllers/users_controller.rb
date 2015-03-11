class UsersController < ApplicationController
 
  def show
    @user = current_user
    render json: { :user => @user.as_json(:only => [:first_name, :last_name, :bar_name, :email, :password]) }, status: :ok
  end

  def edit
    @user = current_user
    if @user.update(user_profile_params)
      render json: { :user => @user.as_json(:only => [:first_name, :last_name, :bar_name, :email, :password])}, status: :accepted
    else
      render json: { :error => "Unable to edit user."}, status: :bad_request
    end
  end

  def destroy
    @user = current_user
    if @user.destroy
      render json: { :message => "User successfully deleted" }, status: :ok
    else
      render json: { :error => "User was not deleted" }, status: :not_found
  end

  private

    def user_profile_params
      params.require(:user).permit(:first_name, :last_name, :bar_name, :email, :password)
    end

end
