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

puts "Database is clean! 🧼"

User.create!(
  # username: "Emma",
  # bio: "Hello, I'm Emma and this is my amazing Bio",
  email: "emma@test.com",
  password: "123456",
  # language: 1,
  # phone_number: "+90123456789",
)

puts "🤟🏻🤟🏼🤟🏽🤟🏾🤟🏿 Amazing! We are done 🤟🏻🤟🏼🤟🏽🤟🏾🤟🏿"
