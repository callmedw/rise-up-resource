class CreateClothing < ActiveRecord::Migration[5.1]
  def change
    create_table :clothings do |t|
      t.column :program_name, :string
      t.column :address, :string
      t.column :address_comments, :string
      t.column :notes, :string
      t.column :web_address, :string
      t.column :phone_number, :string
      t.column :populations_served, :string
      t.column :phone_number, :string
      t.column :gender, :string
      t.column :latitude, :float
      t.column :longitude, :float
      
      t.timestamps
    end
  end
end
