class CreateDayOfTheWeeks < ActiveRecord::Migration[5.1]
  def change
    create_table :day_of_the_week do |t|
      t.column :monday, :string
      t.column :tuesday, :string
      t.column :wednesday, :string
      t.column :thursday, :string
      t.column :friday, :string
      t.column :saturday, :string
      t.column :sunday, :string
      
      t.timestamps
    end
  end
end
