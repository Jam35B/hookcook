class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.string :working_day
      t.date :reserve_date
      t.integer :reserve_price
      t.references :cook, null: false, foreign_key: true
      t.references :kitchen, null: false, foreign_key: true


      t.timestamps
    end
  end
end
