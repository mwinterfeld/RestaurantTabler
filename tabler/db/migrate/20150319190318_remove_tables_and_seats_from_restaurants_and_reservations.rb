class RemoveTablesAndSeatsFromRestaurantsAndReservations < ActiveRecord::Migration
  def change
  	remove_column :reservations, :tables, :integer
  	remove_column :reservations, :seats, :integer
  	remove_column :restaurants, :tables, :integer
  	remove_column :restaurants, :seats, :integer
  end
end
