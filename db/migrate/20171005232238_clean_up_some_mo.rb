class CleanUpSomeMo < ActiveRecord::Migration[5.1]
  def change
    drop_table :days_of_operation
  end
end
