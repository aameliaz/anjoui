class AddFullnameToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :fullname, :string
  end
end
