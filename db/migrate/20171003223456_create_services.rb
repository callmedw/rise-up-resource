class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.column :program_name, :string
      t.column :street_address, :string
      t.column :city, :string
      t.column :state, :string
      t.column :latitude, :string
      t.column :longitude, :string
      t.column :phone, :string
      t.column :web_address, :string
      t.column :hours_of_operation, :string
      t.column :description, :string
      t.column :comments, :string
      t.column :served_populations, :string
      t.column :location_notes, :string
      t.column :days_of_the_week, :string
      t.column :service_code, :string

    end
  end
end
