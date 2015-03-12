class LiquorsController < ApplicationController
  before_action :authenticate_user_from_token!
  before_action :set_user, :set_liquors

  def create
    @user = current_user
    @liquor = @user.liquors.new(liquor_params)
    if @liquor.save
      render :create, status: :created
    else
      render json: { :error => "Problem creating liquor properties"}, status: :bad_request
    end
  end

  def show
    @user = current_user
    @liquor = @user.liquors.find(params[:id])
    if @liquor
      render :show, status: :ok
    else
      render json: { :error => "No liquor with that id" }, status: :not_found
    end
  end

  def edit
    @user = current_user
    @liquor = @user.liquors.find(params[:id])
    if @liquor.update( liquor_params )
      render :edit, status: :ok
    else
      render json: { :error => "There was an error"}, status: :bad_request
    end
  end

  def destroy
     @user = current_user
    @liquor = @user.liquors.find(params[:id])
    if @liquor.destroy
     render json: { :message => "Liquor successfully deleted" }, status: :ok
    else
      render json: { :error => "Liquor was not deleted" }, status: :not_found
    end 
  end


  private

  def set_user
    @user = current_user
  end

  def set_liquor
    @liquor = Liquor.find(params[:id])
  end

  def set_liquors
    @liquors = @user.beers.all
  end

  def liquor_params
    params.require(:liquor).permit(:liquor_name, :liquor_type, :bottle_count)
  end
end
