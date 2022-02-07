class CreatePassengers < ActiveRecord::Migration[5.2]
  def change
    create_table :passengers do |t|
      t.string :full_name
      t.string :phone_num
      t.integer :rating
    end
  end
end
