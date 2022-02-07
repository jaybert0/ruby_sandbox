class CreateDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers do |t|
      t.string :full_name
      t.integer :rating
      t.integer :money
      t.boolean :driving_status
    end
  end
end
