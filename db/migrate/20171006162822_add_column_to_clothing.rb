class AddColumnToClothing < ActiveRecord::Migration[5.1]
  def change
    add_column :clothings, :phone_number, :string
  end
end
