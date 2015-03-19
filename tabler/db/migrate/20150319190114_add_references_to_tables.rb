class AddReferencesToTables < ActiveRecord::Migration
  def change
  	add_column :tables, :reservation_id, :integer
  	add_column :tables, :restaurant_id, :integer
  end
end
