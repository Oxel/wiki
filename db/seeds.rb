# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'ffaker'

5.times do
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Lorem.characters(10)
  )
end

users = User.all

50.times do
  Mywiki.create(
    title: Faker::Lorem.words(5),
    body:  Faker::Lorem.paragraph
    user: users.sample
  )
end