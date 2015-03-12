class LiquorsController < ApplicationController
  before_action :authenticate_user_from_token!
  before_action :set_user, :set_liquors

  def create
     if params[:liquor]
      liquor = params[:liquor]
      @user = current_user
      @liquor = @user.liquors.create(:user_id => @user.id)
      @liquor.update(liquor_params)
      if @liquor.save
        render json: { :liquor => @liquor }, status: :created
      else
        render json: { :error => "Problem creating liquor properties"}, status: :bad_request
      end
      @liquor.update(:liquor => @liquor.id)
    else
      render json: { :error => "Problem creating liquor properties"}, status: :bad_request
    end
    
  end

  def show
    @user = current_user
    @liquor = @user.liquors.find(params[:id])
    if @liquor
      render json: { :liquor => @liquor }, status: :ok
    else
      render json: { :error => "No liquor with that id" }, status: :not_found
    end
  end

  def edit
    @user = current_user
    @liquor = @user.liquors.find(params[:id])
    if @liquor.update( liquor_params )
      render json: { :liquor => @liquor }, status: :ok
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

  def set_beer
    @liquor = Liquor.find(params[:id])
  end

  def set_beers
    @liquors = @user.beers.all
  end

  def liquor_params
    params.require(:liquor).permit(:name, :type, :bottle_count)
  end
end
