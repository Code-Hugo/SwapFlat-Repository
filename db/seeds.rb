require 'faker'

User.create!(user_name: Faker::Name.name, email: Faker::Internet.email, password: "whatever123")

10.times do
  Property.create!(
    property_name: "#{Faker::Name.first_name}'s property",
    property_price: rand(300..2000),
    property_address: %w[Barcelona Paris London Rome Berlin].sample,
    user: User.first
  )
end
