class Property < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :property_address, :property_name, :property_price, presence: true
  validates :property_price, numericality: { only_integer: true }

  include PgSearch::Model
  pg_search_scope :search_by_location,
    against: :property_address,
    using: {
      tsearch: { prefix: true }
    }
end
