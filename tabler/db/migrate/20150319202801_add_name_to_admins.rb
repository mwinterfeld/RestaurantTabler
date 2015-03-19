class AddNameToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :firstName, :string
    add_column :admins, :lastName, :string
  end
end
