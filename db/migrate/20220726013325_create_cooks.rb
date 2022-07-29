class CreateCooks < ActiveRecord::Migration[7.0]
  def change
    create_table :cooks do |t|
      t.string :cook_name
      t.string :cook_adress
      t.integer :cook_number

      t.timestamps
    end
  end
end
