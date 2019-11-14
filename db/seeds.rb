# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Destroying all bets"
Bet.all.destroy_all
puts "Destroying all comments"
Comment.all.destroy_all
puts "Destroying users"
User.all.destroy_all

puts "Creating Users"
50.times do
    User.create(
        name: Faker::Name.first_name,
        password: Faker::Color.name,
        balance: rand(1..30),
        total_profit: rand(1..60)
    )
end

puts "Creating Bets"
50.times do
    Bet.create(
        user_id: rand(1..50),
        amount: rand(1..25),
        result: [true, false].sample
    )
end

puts "Creating Comments"
50.times do
    Comment.create(
        user_id: rand(1..50),
        comment: Faker::Lorem.sentence(word_count: 5, supplemental: true, random_words_to_add: 8)
    )
end

comments = Comment.all
comments.each do |c| 
    c.name = c.user.name
    c.save
end
