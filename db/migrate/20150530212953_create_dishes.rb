class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.text :ingredients
      t.string :photo
      t.string :dish_name
      t.datetime :date_offered
      t.float :price_offered
      t.integer :max_guests
      t.integer :number_guests_left
      t.integer :profile_id
      t.string :cuisine_type
      t.text :location
      t.text :dish_description

      t.timestamps

    end
  end
end
