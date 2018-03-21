class AddNotesToSuppliers < ActiveRecord::Migration
  def change
    add_column :suppliers, :notes, :text
  end
end
