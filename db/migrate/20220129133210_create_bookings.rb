class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :property, null: false, foreign_key: true
      t.string :booking_date_from
      t.string :booking_date_to

      t.timestamps
    end
  end
end
