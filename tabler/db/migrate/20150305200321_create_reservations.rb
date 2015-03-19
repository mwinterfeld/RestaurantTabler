class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :startTime
      t.datetime :endTime
      t.integer :partySize
      t.belongs_to :user
      t.belongs_to :restaurant

      t.timestamps null: false
    end
  end
end
