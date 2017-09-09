class AddPhotosToBeach < ActiveRecord::Migration[5.1]
  def change
    add_column :beaches, :photos, :string
  end
end
