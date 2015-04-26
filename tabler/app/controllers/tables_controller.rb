class TablesController < ApplicationController
  before_action :set_restaurant, only: [:index, :new, :create, :destroy]
  before_action :set_table, only: [:destroy]
  before_filter :logged_in?

  def index
    @tables = Table.where(:restaurant_id => @restaurant.id)
  end

  def new
    @table = Table.new
  end

  def create
    @table = @restaurant.tables.new(table_params)

    respond_to do |format|
      if @table.save
        format.html { redirect_to restaurant_tables_path(@restaurant), notice: 'Restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @table }
      else
        format.html { render :new }
        format.json { render json: @table.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @table.destroy
      respond_to do |format|
        format.html { redirect_to restaurant_tables_path(@restaurant), notice: 'Table was successfully destroyed.' }
        format.json { head :no_content }
      end
  end

  private
    def set_restaurant
      @restaurant = Restaurant.find(params[:restaurant_id])
    end

    def set_table
      @table = Table.find(params[:id])
    end

    def table_params
      params.require(:table).permit(:num_seats, :restaurant_id)
    end
end
