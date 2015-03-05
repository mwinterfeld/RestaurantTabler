class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :category
      t.string :description
      t.integer :tables, array:true, default:[]
      t.integer :seats, array:true, default:[]

      t.timestamps null: false
    end
  end
end
