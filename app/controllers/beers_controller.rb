class BeersController < ApplicationController
  before_action :authenticate_user_from_token!

  def create
    @beer = current_user.beers.new(user_id: @user.id)
    @beer.update(beer_params)
    if @beer.save
      render :create, status: :created
    else
      render json: { :error => "Problem creating beer properties"}, status: :bad_request
    end
  end

  def index
    @beers = current_user.beers.all
    if @beers
      render :index, status: :ok
    else
      render json: { :error => "Unable to find all beers" }, status: :not_found
    end 
  end

  def show
    @beer = current_user.beers.find(params[:id])
    if @beer
      render :show, status: :ok
    else
      render json: { :error => "No beer with that id" }, status: :not_found
    end
  end

  def edit
    @beer = current_user.beers.find(params[:id])
    old_weight = @beer.weight
    new_weight = params[:beer][:weight].to_f
    @amount = new_weight - old_weight
    if @beer.update( beer_params )
      @drink = @beer.drinks.create(:amount => @amount)
      @beer.update_dry_at!
#      KegUpdateJob.perform_later(current_user, @beer)
      render :edit, status: :ok
    else
      render json: { :error => "There was an error"}, status: :bad_request
    end
  end

  def destroy
    @beer = current_user.beers.find(params[:id])
    if @beer.destroy
     render json: { :message => "Beer successfully deleted" }, status: :ok
    else
      render json: { :error => "Beer was not deleted" }, status: :not_found
    end 
  end

  private

  def beer_params
    params.require(:beer).permit(:id, :beer_name, :beer_type, :keg_weight, 
                                 :weight, :keg_number, :dry_at)
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
#    t.integer  "keg_number"
#  end




