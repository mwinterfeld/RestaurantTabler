class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :firstName, :string
    add_column :users, :lastName, :string
    add_column :users, :isAdmin, :boolean
  end
end
