class RemoveColumnFromClothing < ActiveRecord::Migration[5.1]
  def change
    remove_column :clothings, :phone_number, :string
  end
end
