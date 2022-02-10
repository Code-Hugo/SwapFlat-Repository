require 'faker'
Booking.destroy_all
Property.destroy_all
User.destroy_all
User.create!(user_name: "marc", email: "marc@marc.com", password: "marcmarc")
10.times do
  Property.create!(
    property_name: "#{Faker::Name.first_name}'s property",
    property_price: rand(99..1000),
    property_address: %w[Barcelona Paris London Rome Berlin].sample,
    user: User.first
  )
end
