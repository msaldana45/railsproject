class CreateReorders < ActiveRecord::Migration
  def change
    create_table :reorders do |t|
      t.integer :product_id
      t.integer :supplier_id
      t.integer :qtyorder
      t.date :reorderdate
      t.date :expecteddelivery

      t.timestamps null: false
    end
  end
end
