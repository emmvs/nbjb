# db/seeds.rb

require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 1. Delete all Data from Database
puts "Cleaning Database! 🧹"

Place.destroy_all
Night.destroy_all
BitchBookEntry.destroy_all
User.destroy_all
sleep(2)
puts "Database is clean! 🧼"

# 2. Create new Users (aka Bitches)
User.create!(
  email: "emma@test.com",
  password: "123456",
  # language: 1,
  first_name: "Emma Anna Agneta",
  last_name: "Rünzel",
  # phone_number: "+4915750650469",
  # birthday: 1997/09/15/12/00/00,
  # first_game: 20200726120000,
  # role: 1,
  sign: "Virgo ♍️",
  favorite_drink: "Whiskey 🥃",
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
  # role: 1,
  sign: "Gemini ♊️",
  favorite_drink: "Espresso Martini 🍸",
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
  # role: 1,
  sign: "Taurus ♉️",
  favorite_drink: "Wine 🍷",
  lucky_number: 7,
  bio: "Hello, I'm Florence and this is my amazing Bio",
  wins: 6,
  losses: 4
)

# 3. Create new Places
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

# 4. Create new Nights 🌌
Night.create!(
  title: "First NB-JB Game Ever! 🎱",
  start_time: Time.new(2020, 5, 4, 15, 0, 0, '+02:00'),
  end_time: Time.new(2020, 5, 4, 15, 30, 0, '+02:00'),
  user: User.first,
  place: Place.first
)

Night.create!(
  title: "Marlene's wonderful Billard Night",
  start_time: Time.new(2022, 6, 8, 20, 0, 0, '+02:00'),
  end_time: Time.new(2022, 6, 8, 22, 30, 0, '+02:00'),
  user: User.first,
  place: Place.first
)

Night.create!(
  title: "Emma's Birthday Billard Night",
  start_time: Time.new(2022, 6, 8, 20, 0, 0, '+02:00'),
  end_time: Time.new(2022, 6, 8, 22, 30, 0, '+02:00'),
  user: User.first,
  place: Place.first
)

Night.create!(
  title: "Florence's Birthday Billard Night",
  start_time: Time.new(2022, 6, 8, 20, 0, 0, '+02:00'),
  end_time: Time.new(2022, 6, 8, 22, 30, 0, '+02:00'),
  user: User.first,
  place: Place.first
)

Night.create!(
  title: "Ida's Birthday Billard Night",
  start_time: Time.new(2022, 6, 8, 20, 0, 0, '+02:00'),
  end_time: Time.new(2022, 6, 8, 22, 30, 0, '+02:00'),
  user: User.first,
  place: Place.first
)

# 5. Create new Bitch Book Entries
BitchBookEntry.create!(
  topic: "History",
  title: "When was Billard invented?",
  text: "Did you know that... by 1850, the billiard table had essentially
        evolved into its current form. The dominant billiard
        game in Britain from about 1770 until the 1920's was
        English Billiards, played with three balls and six
        pockets on a large rectangular table.",
  rating: 8,
  user: User.first
)

BitchBookEntry.create!(
  topic: "Rule",
  title: "How to place Billiard Balls correctly?",
  text: "Did you know that... for a game of eight-ball,
  you use balls that are numbered from 1 to 15,
  but only three of these balls have a specific placement in the triangle.
  The 8 ball must be at the centre and the two balls in the lower corners of the triangle
  must be different (one solid and one striped),
  but it doesnt matter which one is in which corner.
  The other 12 balls must be placed in alternation,
  including the one at the top corner of the triangle. Easy, right?",
  rating: 9,
  user: User.last
)

# 6. Show created Seeds
p "Created #{User.count} Bitches! 🎱"
sleep(1)
p "Created #{Place.count} Places! 🎱"
sleep(1)
p "Created #{Night.count} Nights! 🎱"
sleep(1)
p "Created #{BitchBookEntry.count} Bitch Book Entries! 🎱"
puts "🎱🎱🎱🎱🎱 Amazing! We are done 🎱🎱🎱🎱🎱"
