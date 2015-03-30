class ChangeRestaurantDescriptionToText < ActiveRecord::Migration
  def self.up
    change_column :restaurants, :description, :text
  end

  def self.down
    change_column :restaurants, :description, :string
  end
end
