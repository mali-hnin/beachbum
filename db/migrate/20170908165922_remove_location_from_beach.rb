class RemoveLocationFromBeach < ActiveRecord::Migration[5.1]
  def change
    remove_column :beaches, :location
    add_column :beaches, :address, :string
  end
end
