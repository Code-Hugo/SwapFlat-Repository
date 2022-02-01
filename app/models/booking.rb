class Booking < ApplicationRecord
  belongs_to :user_id
  belongs_to :property_id
  validates :booking_date_from, :booking_date_to, presence: true
end
