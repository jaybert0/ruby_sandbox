class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :trip_start
      t.string :trip_end
      t.integer :distance
      t.integer :passenger_id
      t.integer :driver_id
    end
  end
end
