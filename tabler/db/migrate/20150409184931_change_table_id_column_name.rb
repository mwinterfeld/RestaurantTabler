class ChangeTableIdColumnName < ActiveRecord::Migration
  def change
  	rename_column :reservations, :tableID, :table_id
  end
end
