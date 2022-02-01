class Property < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :property_address, :property_name, :property_price, presence: true
end
