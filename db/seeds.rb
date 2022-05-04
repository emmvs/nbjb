# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Cleaning Database! 🧹"

User.destroy_all
Night.destroy_all
Place.destroy_all

puts "Database is clean! 🧼"

User.create!(
  # username: "Emma",
  # birthday
  # first_game
  # astro_sign
  # favorite_drink
  # lucky_number
  # bio: "Hello, I'm Emma and I am the Founder of NBJB",
  email: "emma@test.com",
  password: "123456",
  # language: 1,
  # phone_number: "+4915785519243"
)

User.create!(
  # username: "Marlene",
  # bio: "Hello, I'm Marlene and I am the Founder of NBJB",
  email: "marlene@test.com",
  password: "123456",
  # language: 1,
  # phone_number: "+4915750650469"
)

User.create!(
  # username: "Florence",
  # bio: "Hello, I'm Florence and this is my amazing Bio",
  email: "florence@test.com",
  password: "123456",
  # language: 1,
  # phone_number: "+14154259973"
)

Place.create!(
  name: "Bechereck",
  address: "Neukölln",
  asshole_score: 4,
  barkeeper_rating: 8,
  dating_rating: 3,
  bathroom_rating: 4,
  beer_price: 3,
  user: User.last
)

Night.create!(
  date: 0o4 / 0o5 / 2022,
  time: '20:30:00-21:00:00',
  user: User.first,
  place: Place.first
)

puts "🎱🎱🎱🎱🎱 Amazing! We are done 🎱🎱🎱🎱🎱"
