class AddIconToBeaches < ActiveRecord::Migration[5.1]
  def change
    add_column :beaches, :icon, :string
  end
end
