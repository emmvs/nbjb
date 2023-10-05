require "open-uri"

puts "Cleaning Database! 🧹"

Player.destroy_all
Game.destroy_all
Night.destroy_all
Place.destroy_all
BitchBookEntry.destroy_all
User.destroy_all
sleep(2)
puts "Database is clean! 🧼"

emma = User.create!(
  email: "emma@test.com",
  password: "123456",
  # language: 1,
  first_name: "Emma Anna Agneta",
  last_name: "Rünzel",
  # phone_number: "+4915750650469",
  # birthday: 1997/09/15/12/00/00,
  # first_game: 20200726120000,
  role: 2,
  sign: "Virgo ♍️",
  favorite_drink: "Whiskey 🥃",
  lucky_number: 2,
  bio: "Hello, I'm Emma and I am the Founder of NBJB"
)

marlene = User.create!(
  email: "marlene@test.com",
  password: "123456",
  # language: 1,
  first_name: "Marlene",
  last_name: "von Kujawa",
  # phone_number: "+4915750650469",
  # birthday: 19970601120000,
  # first_game: 20200726120000,
  role: 2,
  sign: "Gemini ♊️",
  favorite_drink: "Espresso Martini 🍸",
  lucky_number: 6,
  bio: "Hello, I'm Marlene and I am the Founder of NBJB"
)

florence = User.create!(
  email: "florence@test.com",
  password: "123456",
  # language: 2,
  first_name: "Florence",
  last_name: "Böhm",
  # phone_number: "+14154259973",
  # birthday: 19990507120000,
  # first_game: 20210507120000,
  role: 1,
  sign: "Taurus ♉️",
  favorite_drink: "Wine 🍷",
  lucky_number: 7,
  bio: "Hello, I'm Florence and this is my amazing Bio"
)

ida = User.create!(
  email: "ida@test.com",
  password: "123456",
  # language: 2,
  first_name: "Ida",
  last_name: "Lieback",
  # phone_number: "+14154259973",
  # birthday: 19990507120000,
  # first_game: 20210507120000,
  role: 1,
  sign: "Gemini♊︎",
  favorite_drink: "Lemonade🍋",
  lucky_number: 42,
  bio: "Hello, I'm Ida and this is my amazing Bio"
)

santiana = User.create!(
  email: "santiana@test.com",
  password: "123456",
  # language: 2,
  first_name: "Santiana",
  last_name: "Sanchez",
  # phone_number: "+14154259973",
  # birthday: 19990507120000,
  # first_game: 20210507120000,
  role: 0,
  sign: "Gemini♊︎",
  favorite_drink: "Sours🍋",
  lucky_number: 23,
  bio: "I am Santiana from Venezuela and I hate Mexikaner because tehy are racist ❌ and I love dark humor 🦙"
)

nadja = User.create!(
  email: "nadja@test.com",
  password: "123456",
  # language: 2,
  first_name: "Nadja Josefin",
  last_name: "Rünzel",
  # phone_number: "+14154259973",
  # birthday: 19990507120000,
  # first_game: 20210507120000,
  sign: "Virgo♍️",
  favorite_drink: "Mexikaner♥️",
  lucky_number: 2,
  bio: "I am Nadja and I hate Santiana"
)

avatars = [
  "https://kitt.lewagon.com/placeholder/users/emmvs",
  "https://res.cloudinary.com/dk5glvhr6/image/upload/v1680369074/nb-jb/marlene_zxvf7p.jpg",
  "https://res.cloudinary.com/dk5glvhr6/image/upload/v1679317384/nb-jb/florence.png",
  "https://res.cloudinary.com/dk5glvhr6/image/upload/v1680369221/nb-jb/ida_dnyft8.jpg",
  "https://res.cloudinary.com/dk5glvhr6/image/upload/v1680370155/nb-jb/santiana_encwl3.jpg",
  "https://res.cloudinary.com/dk5glvhr6/image/upload/v1680369396/nb-jb/nadja_mdt9cd.jpg"
]

puts "Seeding 🌱 " + avatars.count.to_s + " avatars of them Ladiesss 📸"

User.all.each_with_index do |user, index|
  file = URI.open(avatars[index])
  user.avatar.attach(io: file, filename: "avatar.png", content_type: "image/png")
  user.save
end

puts "Created Users 🧕🏽 👩🏼 💃🏽 👩‍✈️"

# Places
Place.create!(
  name: "Bechereck",
  address: "Okerstraße 35, 12049 Berlin",
  asshole_score: 4,
  barkeeper_rating: 8,
  dating_rating: 3,
  bathroom_rating: 4,
  beer_price: 3,
  user_id: emma.id
)

Place.create!(
  name: "Bierbaum 3",
  address: "Schillerpromenade 31, 12049 Berlin",
  asshole_score: 2,
  barkeeper_rating: 8,
  dating_rating: 1,
  bathroom_rating: 4,
  beer_price: 3,
  user_id: emma.id
)

Place.create!(
  name: "Zum Elefanten",
  address: "Oranienstraße 12, 10999 Berlin",
  asshole_score: 2,
  barkeeper_rating: 8,
  dating_rating: 1,
  bathroom_rating: 4,
  beer_price: 3,
  user_id: marlene.id
)

billard_house = Place.create!(
  name: "Billard House",
  address: "Rudolfstraße 1-8, 10245 Berlin",
  asshole_score: 2,
  barkeeper_rating: 8,
  dating_rating: 4,
  bathroom_rating: 6,
  beer_price: 4,
  user_id: nadja.id
)

# Nights 🌌
first_night = Night.create!(
  title: "First NB-JB Game Ever! 🎱",
  start_time: Time.new(2020, 5, 4, 15, 0, 0, '+02:00'),
  end_time: Time.new(2020, 5, 4, 15, 30, 0, '+02:00'),
  user_id: emma.id,
  place: Place.first
)

Night.create!(
  title: "Marlene's wonderful Billard Night",
  start_time: Time.new(2022, 6, 8, 20, 0, 0, '+02:00'),
  end_time: Time.new(2022, 6, 8, 22, 30, 0, '+02:00'),
  user_id: marlene.id,
  place: Place.first
)

emmas_night = Night.create!(
  title: "Emma's Birthday Billard Night",
  start_time: Time.new(2022, 6, 8, 20, 0, 0, '+02:00'),
  end_time: Time.new(2022, 6, 8, 22, 30, 0, '+02:00'),
  user_id: emma.id,
  place: Place.first
)

idas_night = Night.create!(
  title: "Ida's Birthday Billard Night",
  start_time: Time.new(2022, 6, 8, 20, 0, 0, '+02:00'),
  end_time: Time.new(2022, 6, 8, 22, 30, 0, '+02:00'),
  user_id: ida.id,
  place: Place.first
)

florences_night = Night.create!(
  title: "Florence's Birthday Billard Night",
  start_time: Time.new(2022, 6, 8, 20, 0, 0, '+02:00'),
  end_time: Time.new(2022, 6, 8, 22, 30, 0, '+02:00'),
  user_id: florence.id,
  place: Place.first
)

emmas_game = Game.create!(
  start_time: Time.new(2022, 6, 8, 20, 0, 0, '+02:00'),
  end_time: Time.new(2022, 6, 8, 22, 30, 0, '+02:00'),
  place_id: billard_house.id,
  night_id: first_night.id
)

User.all.each do |user|
  Player.create!(user:, game: emmas_game)
end

idas_game = Game.create!(
  start_time: Time.new(2022, 6, 8, 20, 0, 0, '+02:00'),
  end_time: Time.new(2022, 6, 8, 22, 30, 0, '+02:00'),
  place: Place.first,
  night: first_night
)

User.all.each do |user|
  Player.create!(user:, game: idas_game)
end

flos_game = Game.create!(
  start_time: Time.new(2022, 6, 8, 20, 0, 0, '+02:00'),
  end_time: Time.new(2022, 6, 8, 22, 30, 0, '+02:00'),
  place: Place.first,
  night: first_night
)

User.all.each do |user|
  Player.create!(user:, game: flos_game)
end

# Bitch Book Entries
BitchBookEntry.create!(
  topic: "History",
  title: "When was Billard invented?",
  text: "Did you know that... by 1850, the billiard table had essentially
        evolved into its current form. The dominant billiard
        game in Britain from about 1770 until the 1920's was
        English Billiards, played with three balls and six
        pockets on a large rectangular table.",
  rating: 8,
  user: emma
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
  user: emma
)

puts "Created #{User.count} Bitches! 🎱"
sleep(1)
puts "Created #{Place.count} Places! 🎱"
sleep(1)
puts "Created #{Night.count} Nights! 🎱"
sleep(1)
puts "Created #{BitchBookEntry.count} Bitch Book Entries! 🎱"
puts "🎱🎱🎱🎱🎱 Amazing! We are done 🎱🎱🎱🎱🎱"
