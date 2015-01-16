class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.string :name
      t.integer :quantity
      t.integer :price
      t.timestamps
    end
  end
end
