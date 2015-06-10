class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :status
      t.integer :review_score
      t.integer :profile_id
      t.integer :dish_id
      t.text :review_comments

      t.timestamps

    end
  end
end
