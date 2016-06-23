class AddDateTimetoReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :reservation_datetime, :datetime
  end
end
