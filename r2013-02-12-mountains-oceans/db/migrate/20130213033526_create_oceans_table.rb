class CreateOceansTable < ActiveRecord::Migration
  def change
    create_table :oceans do |t|
      t.string :name
      t.text :image
      t.float :total_area
      t.integer :percent_of_earth
      t.integer :max_depth
      t.text :etymology
      t.timestamps
    end
  end
end