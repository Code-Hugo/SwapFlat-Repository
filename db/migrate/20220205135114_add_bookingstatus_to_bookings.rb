class AddBookingstatusToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :bookingstatus, :boolean
  end
end
