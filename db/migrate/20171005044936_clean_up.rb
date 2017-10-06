class CleanUp < ActiveRecord::Migration[5.1]
  def change
    drop_table :days_of_operations
    drop_table :day_of_the_week
  end
end
