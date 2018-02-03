# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds.rb
require 'faker'

puts 'clearing db'
Message.delete_all
User.delete_all

puts 'creating users'
10.times do
  user = User.create!(
    username: Faker::Internet.username,
    password: 'password'
  )

  puts 'creating messages'
  rand(1..5).times do
    Message.create!(
      body: Faker::Lorem.paragraph(sentence_count: 2),
      user_id: user.id,
      created_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
      updated_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)
    )
  end
end

puts User.first.username
