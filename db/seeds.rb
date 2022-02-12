require "open-uri"

Booking.destroy_all
Property.destroy_all
User.destroy_all

User.create!(user_name: "marc", email: "marc@marc.com", password: "marcmarc")

puts "created new user"

dishoom_cg = Property.new(
  property_name: "Lauren's Place",
  property_address: "Barcelona",
  property_price: '99',
  availability_from: '13-02-2022',
  availability_until: '20-20-2022',
  user: User.first
)

file =
  URI.open('https://res.cloudinary.com/dvmasclft/image/upload/v1644665185/mvostgry5d96fk4t6rzu.jpg')
    dishoom_cg.photo.attach(io: file, filename: 'dishoom-ken.png', content_type: 'image/jpg')
    dishoom_cg.save!

puts "created #{dishoom_cg.id} property"

dishoom_cg2 = Property.new(
  property_name: "Rosetta's Place",
  property_address: "London",
  property_price: '129',
  availability_from: '13-02-2022',
  availability_until: '20-20-2022',
  user: User.first
)

file2 =
  URI.open('https://res.cloudinary.com/dvmasclft/image/upload/v1644665180/awoby2k4e7rrukv5gfkb.jpg')
    dishoom_cg2.photo.attach(io: file2, filename: 'dishoom-ken2.png', content_type: 'image/jpg')
    dishoom_cg2.save!

puts "created #{dishoom_cg2.id} property"

dishoom_cg3 = Property.new(
  property_name: "Francisco's Place",
  property_address: "Berlin",
  property_price: '79',
  availability_from: '13-02-2022',
  availability_until: '20-20-2022',
  user: User.first
)

file3 =
  URI.open('https://res.cloudinary.com/dvmasclft/image/upload/v1644665180/ivngg9kwmmj3unmxroqu.jpg')
    dishoom_cg3.photo.attach(io: file3, filename: 'dishoom-ken3.png', content_type: 'image/jpg')
    dishoom_cg3.save!

puts "created #{dishoom_cg3.id} property"

dishoom_cg4 = Property.new(
  property_name: "Marc's Place",
  property_address: "Rome",
  property_price: '199',
  availability_from: '13-02-2022',
  availability_until: '20-20-2022',
  user: User.first
)

file4 =
  URI.open('https://res.cloudinary.com/dvmasclft/image/upload/v1644665180/v9qxw9pu6syfjhnnudxi.jpg')
    dishoom_cg4.photo.attach(io: file4, filename: 'dishoom-ken4.png', content_type: 'image/jpg')
    dishoom_cg4.save!

puts "created #{dishoom_cg4.id} property"

dishoom_cg5 = Property.new(
  property_name: "Irene's Place",
  property_address: "Prague",
  property_price: '75',
  availability_from: '13-02-2022',
  availability_until: '20-20-2022',
  user: User.first
)

file5 =
  URI.open('https://res.cloudinary.com/dvmasclft/image/upload/v1644665180/j8ycexuz6f2hddjjpepr.jpg')
    dishoom_cg5.photo.attach(io: file5, filename: 'dishoom-ken5.png', content_type: 'image/jpg')
    dishoom_cg5.save!

puts "created #{dishoom_cg5.id} property"

dishoom_cg6 = Property.new(
  property_name: "Tobi's Place",
  property_address: "Barcelona",
  property_price: '159',
  availability_from: '13-02-2022',
  availability_until: '20-20-2022',
  user: User.first
)

file6 =
  URI.open('https://res.cloudinary.com/dvmasclft/image/upload/v1644665180/nrcdg0jwqsjsdzoplk1r.jpg')
    dishoom_cg6.photo.attach(io: file6, filename: 'dishoom-ken6.png', content_type: 'image/jpg')
    dishoom_cg6.save!

puts "created #{dishoom_cg6.id} property"

dishoom_cg7 = Property.new(
  property_name: "Hugo's Place",
  property_address: "Madrid",
  property_price: '97',
  availability_from: '13-02-2022',
  availability_until: '20-20-2022',
  user: User.first
)

file7 =
  URI.open('https://res.cloudinary.com/dvmasclft/image/upload/v1644665180/k1csca9fgk94azij2jpw.jpg')
    dishoom_cg7.photo.attach(io: file7, filename: 'dishoom-ken7.png', content_type: 'image/jpg')
    dishoom_cg7.save!

puts "created #{dishoom_cg7.id} property"

dishoom_cg8 = Property.new(
  property_name: "Jame's Place",
  property_address: "Manchester",
  property_price: '199',
  availability_from: '13-02-2022',
  availability_until: '20-20-2022',
  user: User.first
)

file8 =
  URI.open('https://res.cloudinary.com/dvmasclft/image/upload/v1644665180/psrkkrws93u9wwgus3k1.jpg')
    dishoom_cg8.photo.attach(io: file8, filename: 'dishoom-ken8.png', content_type: 'image/jpg')
    dishoom_cg8.save!

puts "created #{dishoom_cg8.id} property"
