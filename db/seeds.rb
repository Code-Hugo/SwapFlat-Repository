require 'faker'

puts "Creating 10 fake hero services..."
10.times do
  Property.create!(
    property_name: "#{Faker::Verb.ing_form} service",
    property_price: "I'll use my #{Faker::Superhero.power} to accomplish the mission",
    property_address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    user: User.first
  )
end
