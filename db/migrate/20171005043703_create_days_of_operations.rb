class CreateDaysOfOperations < ActiveRecord::Migration[5.1]
  def change
    create_table :days_of_operations do |t|

      t.timestamps
    end
  end
end
