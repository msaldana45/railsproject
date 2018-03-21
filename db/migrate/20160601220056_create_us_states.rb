class CreateUsStates < ActiveRecord::Migration
  def change
    create_table :us_states do |t|
      t.string :abbreviation
      t.string :statename

      t.timestamps null: false
    end
  end
end
