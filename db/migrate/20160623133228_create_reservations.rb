class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :reservation_date
      t.string :reservation_time
      t.integer :num_tables

      t.timestamps null: false
    end
  end
end
