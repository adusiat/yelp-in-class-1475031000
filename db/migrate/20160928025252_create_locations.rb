class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :city
      t.string :neighborhood
      t.integer :restaurant_id

      t.timestamps

    end
  end
end
