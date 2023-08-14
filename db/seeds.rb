# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb

require 'faker'

# Clear existing data
User.destroy_all

20.times do
  email = Faker::Internet.unique.email
  user = User.new(email: email)

  if user.save
    puts "Created user: #{user.email}"
  else
    puts "Failed to create user: #{user.email} - Errors: #{user.errors.full_messages.join(', ')}"
  end
end

20.times do |i|
  user_id = i + 1
  ship = Ship.new(
    user_id: user_id,
    description: Faker::Lorem.paragraph_by_chars(number: rand(50..220)),
    capacity: rand(1..500),
    price_per_day: rand(50..500)
  )

  if ship.save
    puts "Created ship with ID #{ship.id} and user_id #{user_id}"
  else
    puts "Failed to create ship - Errors: #{ship.errors.full_messages.join(', ')}"
  end
end
