class CreateTagtorestaurants < ActiveRecord::Migration
  def change
    create_table :tagtorestaurants do |t|
      t.integer :restaurant_id

      t.timestamps

    end
  end
end
