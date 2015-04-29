class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_admin!, except: [:show, :index]
  before_action :filter_restaurants, only: [:index]

  # GET /restaurants
  # GET /restaurants.json
  def index
  end

  # GET /restaurants/1
  # GET /restaurants/1.json
  def show
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new

  end

  # GET /restaurants/1/edit
  def edit
    unless can_edit_and_destroy? params[:id]
      redirect_to restaurants_path, :flash => {:error => 'Error: You are not authorized to view this resource.'}
    end
  end

  # POST /restaurants
  # POST /restaurants.json
  def create
    @restaurant = Restaurant.new(restaurant_params.merge!(admin_id:current_admin.id))

    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant }
      else
        format.html { render :new }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurants/1
  # PATCH/PUT /restaurants/1.json
  def update
    respond_to do |format|
      if @restaurant.update(restaurant_params)
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant }
      else
        format.html { render :edit }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurants/1
  # DELETE /restaurants/1.json
  def destroy
    if can_edit_and_destroy? params[:id]
      @restaurant.destroy
      respond_to do |format|
        format.html { redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      redirect_to restaurants_url, :flash => {:error => 'Error: Operation not permitted.'}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_params
      params.require(:restaurant).permit(:name, :category, :description, :logo)
    end

    def filter_restaurants
      unless current_user.nil?
        @restaurants = Restaurant.paginate(:page => params[:page], :per_page => 4)
      end

      unless current_admin.nil?
        @restaurants = current_admin.restaurants.paginate(:page => params[:page], :per_page => 4)
      end
    end

    def can_edit_and_destroy? restaurant_id
      unless current_admin.nil?
        if current_admin.restaurants.where(:id => restaurant_id).first.nil?
          return false
        end
      end
      return true
    end
end
