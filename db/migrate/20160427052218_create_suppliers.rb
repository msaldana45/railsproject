class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :companyname
      t.string :pointofcontact
      t.string :website
      t.string :phone

      t.timestamps null: false
    end
  end
end
