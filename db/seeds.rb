require 'ffaker'


# Create Users
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
		title: Faker::Lorem.words(5).join(' '),
		body:  Faker::Lorem.paragraph,
		user: users.sample
		)
end

puts "Seed finished"
puts "#{User.count} posts created"
puts "#{Mywiki.count} comments created"