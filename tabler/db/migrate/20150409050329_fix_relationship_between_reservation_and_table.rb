class FixRelationshipBetweenReservationAndTable < ActiveRecord::Migration
  def change
  	remove_column :tables, :reservation_id, :integer
  end
end
