# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Cleaning Database! 🧹"

Night.destroy_all
User.destroy_all
Place.destroy_all
BitchBookEntry.destroy_all

puts "Database is clean! 🧼"

User.create!(
  email: "emma@test.com",
  password: "123456",
  # language: 1,
  first_name: "Emma Anna Agneta",
  last_name: "Rünzel",
  # phone_number: "+4915750650469",
  # birthday: 1997/09/15/12/00/00,
  # first_game: 20200726120000,
  sign: "Virgo ♍️",
  favorite_drink: "Espresso Martini",
  lucky_number: 2,
  bio: "Hello, I'm Emma and I am the Founder of NBJB",
  wins: 6,
  losses: 4
)

User.create!(
  email: "marlene@test.com",
  password: "123456",
  # language: 1,
  first_name: "Marlene",
  last_name: "von Kujawa",
  # phone_number: "+4915750650469",
  # birthday: 19970601120000,
  # first_game: 20200726120000,
  sign: "Gemini ♊️",
  favorite_drink: "Espresso Martini",
  lucky_number: 6,
  bio: "Hello, I'm Marlene and I am the Founder of NBJB",
  wins: 6,
  losses: 4
)

User.create!(
  email: "florence@test.com",
  password: "123456",
  # language: 2,
  first_name: "Florence",
  last_name: "Böhm",
  # phone_number: "+14154259973",
  # birthday: 19990507120000,
  # first_game: 20210507120000,
  sign: "Taurus ♉️",
  favorite_drink: "Espresso Martini",
  lucky_number: 7,
  bio: "Hello, I'm Florence and this is my amazing Bio",
  wins: 6,
  losses: 4
)

Place.create!(
  name: "Bierbaum 3",
  address: "Neukölln",
  asshole_score: 2,
  barkeeper_rating: 8,
  dating_rating: 1,
  bathroom_rating: 4,
  beer_price: 3,
  user: User.first
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
  title: "Emmas Amazing Night out on May 26th 2022",
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
