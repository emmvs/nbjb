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
BitchBookEntry.destroy_all

puts "Database is clean! 🧼"

User.create!(
  first_name: "Emma Anna Agneta",
  last_name: "Rünzel",
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
  first_name: "Marlene",
  # bio: "Hello, I'm Marlene and I am the Founder of NBJB",
  email: "marlene@test.com",
  password: "123456",
  # language: 1,
  # phone_number: "+4915750650469"
)

User.create!(
  first_name: "Florence",
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
  start_time: Time.new(2022, 5, 4, 15, 0, 0, '+02:00'),
  end_time: Time.new(2022, 5, 4, 15, 30, 0, '+02:00'),
  user: User.first,
  place: Place.first
)

BitchBookEntry.create!(
  topic: "History",
  title: "When was Billard invented?",
  text: "Did you know that... by 1850, the billiard table had essentially
        evolved into its current form. The dominant billiard
        game in Britain from about 1770 until the 1920's was
        English Billiards, played with three balls and six
        pockets on a large rectangular table.",
  raiting: 8,
  user: User.first
)

puts "🎱🎱🎱🎱🎱 Amazing! We are done 🎱🎱🎱🎱🎱"
