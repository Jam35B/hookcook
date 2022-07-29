class CreateKitchens < ActiveRecord::Migration[7.0]
  def change
    create_table :kitchens do |t|
      t.string :equipment
      t.string :services
      t.string :kitchen_adress
      t.integer :kitchen_surface
      t.string :kitchen_description

      t.timestamps
    end
  end
end
