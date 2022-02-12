class Property < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :property_address, :property_name, :property_price, presence: true
  validates :property_price, numericality: { only_integer: true }
  geocoded_by :property_address
  after_validation :geocode, if: :will_save_change_to_property_address?

  include PgSearch::Model
  pg_search_scope :search_by_location,
    against: :property_address,
    using: {
      tsearch: { prefix: true }
    }
end
