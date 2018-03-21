class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :productname
      t.string :productimage
      t.text :description
      t.integer :category_id
      t.integer :supplier_id
      t.float :saleprice
      t.string :status
      t.float :purchaseprice
      t.integer :qtyonhand
      t.integer :reorderpoint
      t.integer :reorderqty

      t.timestamps null: false
    end
  end
end
