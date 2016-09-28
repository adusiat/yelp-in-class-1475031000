class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.text :name
      t.string :description
      t.text :address
      t.string :website
      t.string :cover_photo
      t.integer :review

      t.timestamps

    end
  end
end
