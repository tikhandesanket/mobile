class CreateCellphones < ActiveRecord::Migration
  def change
    create_table :cellphones do |t|
      t.string :brand
      t.integer :price
      t.string :color
      t.string :details
      t.string :os

      t.timestamps
    end
  end
end
