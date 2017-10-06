class CreatePopularLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :popular_links do |t|
      t.column :name, :string
      t.column :url, :string
      t.column :image, :string
      t.column :description, :string
      
      t.timestamps
    end
  end
end
