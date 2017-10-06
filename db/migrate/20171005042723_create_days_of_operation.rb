class CreateDaysOfOperation < ActiveRecord::Migration[5.1]
  def change
    create_table :days_of_operation do |t|
      t.string :day_of_the_week
      t.integer :service_id
      
      t.timestamps
    end
  end
end
