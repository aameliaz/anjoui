class AddGuestsToDishes < ActiveRecord::Migration
  def change
    add_column :dishes, :guests, :integer
  end
end
