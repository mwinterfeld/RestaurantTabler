class AddTableIdToReservation < ActiveRecord::Migration
  def change
  	add_column :reservations, :tableID, :integer
  end
end
