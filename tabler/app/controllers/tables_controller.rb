class TablesController < ApplicationController
  before_action :set_restaurant
  before_action :set_table, only: [:destroy]
  before_filter :logged_in?
  before_filter :filter_tables, only: [:index]

  def index
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

    def filter_tables
      unless current_user.nil?
        @restaurant_tables = Table.where(:restaurant_id => @restaurant.id)
        @tables = @restaurant_tables.where.not(id: @restaurant_tables.joins(:reservations).where(reservations: {:restaurant_id => @restaurant.id}).select('id')).order('num_seats')
      end

      unless current_admin.nil?
        @tables = Table.where(:restaurant_id => @restaurant.id)
      end
    end
end
