class BeerController < ApplicationController
  before_action :authenticate_user_from_token!
  before_action :set_user, :set_beers

  def create
     if params[:beer]
      beer = params[:beer]
      @user = current_user
      @beer = @user.beers.create(:user_id => @user.id)
      @beer.update(beer_params)
      if @beer.save
        render json: { :beer => @beer }, status: :created
      else
        render :create
      end
      @beer.update(:beer => @beer.id)
    else
      render json: { :error => "Problem creating beer properties"}, status: :bad_request
    end
    
  end

  def show
    @user = current_user
    @beer = @user.beers.find(params[:id])
    if @beer
      render :show
    else
      render json: { :error => "No beer with that id" }, status: :not_found
    end
  end

  def edit
    @user = current_user
    @beer = @user.beers.find(params[:id])
    if @beer.update( beer_params )
      render json: { :beer => @beer }, status: :ok
    else
      render json: { :error => "There was an error"}, status: :bad_request
    end
  end

  def destroy
     @user = current_user
    @beer = @user.beers.find(params[:id])
    if @beer.destroy
     render json: { :message => "Beer successfully deleted" }, status: :ok
    else
      render json: { :error => "Beer was not deleted" }, status: :not_found
    end 
  end


  private

  def set_user
    @user = current_user
  end

  def set_beer
    @beer = Beer.find(params[:id])
  end

  def set_beers
    @beers = @user.beers.all
  end

  def beer_params
    params.require(:beer).permit(:name, :type, :weight, :keg_weight)
  end
end

#create_table "beers", force: :cascade do |t|
#    t.string   "name"
#    t.string   "type"
#    t.integer  "user_id"
#    t.string   "weight"
#    t.string   "keg_weight"
#    t.datetime "created_at", null: false
#    t.datetime "updated_at", null: false
#  end




