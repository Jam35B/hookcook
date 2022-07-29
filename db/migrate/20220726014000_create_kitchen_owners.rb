class CreateKitchenOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :kitchen_owners do |t|
      t.string :kitchen_name
      t.string :string
      t.string :kitchen_mail
      t.integer :kitchen_number
      t.string :kitchen_adress

      t.timestamps
    end
  end
end
