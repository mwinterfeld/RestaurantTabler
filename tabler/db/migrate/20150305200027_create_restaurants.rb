class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :category
      t.string :description
      t.belongs_to :admin

      t.timestamps null: false
    end
  end
end
