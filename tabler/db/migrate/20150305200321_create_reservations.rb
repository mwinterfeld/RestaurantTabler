class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :startTime
      t.datetime :endTime
      t.integer :partySize
      t.integer :tables, array:true, default:[]
      t.integer :seats, array:true, default:[]

      t.timestamps null: false
    end
  end
end
