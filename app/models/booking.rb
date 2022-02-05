class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :property
  validates :booking_date_from, :booking_date_to, presence: true
end
