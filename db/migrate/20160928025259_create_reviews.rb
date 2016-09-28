class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :restaurant_id
      t.integer :user_id
      t.string :photo
      t.string :stars
      t.string :reviewdesc

      t.timestamps

    end
  end
end
