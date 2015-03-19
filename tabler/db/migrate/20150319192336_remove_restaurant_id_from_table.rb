class RemoveRestaurantIdFromTable < ActiveRecord::Migration
  def change
  	remove_column :tables, :restaurant_id, :integer
  end
end
