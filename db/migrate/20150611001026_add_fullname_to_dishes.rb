class AddFullnameToDishes < ActiveRecord::Migration
  def change
    add_column :dishes, :fullname, :string
  end
end
