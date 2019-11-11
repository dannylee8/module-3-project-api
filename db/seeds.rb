# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Destroying users"
User.all.destroy_all
puts "Destroying all bets"
Bet.all.destroy_all
puts "Destroying all comments"
Comment.all.destroy_all

puts "Creating users"
50.times do
    User.create(
        name: Faker::Name.first_name,
        password: Faker::Color.name,
        balance: rand(1..1000)
    )
end

puts "Creating Bets"
50.times do
    User.create(
        user_id: rand(1..5),
        amount: rand(1..25),
        result: [true, false].sample,  // randomly select true or false
    )
end

puts "Creating Comments"
50.times do
    User.create(
        user_id: rand(1..5),
        amount: rand(1..25),
        result: [true, false].sample,  // randomly select true or false
    )
end