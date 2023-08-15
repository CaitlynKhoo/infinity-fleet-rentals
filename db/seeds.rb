require 'date'
require 'faker'

Booking.destroy_all
Ship.destroy_all
User.destroy_all

User.create!(
  email: "Barry@infinityfleetrentals.com",
  password: "password1",
  name: "Admin Barry",
  phone_number: "123-456-7891",
  address: "Address One",
  date_of_birth: Date.new(1990, 1, 1),
  #user_img: "https://avatars.githubusercontent.com/u/138180537?v=4"
)

User.create!(
  email: "karthika@infinityfleetrentals.com",
  password: "password2",
  name: "Admin Karthika",
  phone_number: "123-456-7892",
  address: "Address Two",
  date_of_birth: Date.new(1990, 2, 2),
  #user_img: "https://avatars.githubusercontent.com/u/129238177?v=4"
)

User.create!(
  email: "Caitlyn@infinityfleetrentals.com",
  password: "password3",
  name: "Admin Caitlyn",
  phone_number: "123-456-7893",
  address: "Address Three",
  date_of_birth: Date.new(1990, 3, 3),
  #user_img: "https://avatars.githubusercontent.com/u/138352657?v=4"
)

User.create!(
  email: "Kostas@infinityfleetrentals.com",
  password: "password4",
  name: "Admin kostas",
  phone_number: "123-456-7894",
  address: "Address Four",
  date_of_birth: Date.new(1990, 4, 4),
  #user_img: "https://avatars.githubusercontent.com/u/133198548?v=4"
)

20.times do
  email = Faker::Internet.unique.email
  name = Faker::Name.name
  user = User.new(email: email)
  password = "123123"
  phone_number = Faker::PhoneNumber
  address = Faker::Address
  date_of_birth = Faker::Date.birthday

  user = User.new(email: email, date_of_birth: date_of_birth, address: address, name: name, phone_number: phone_number, password: password, password_confirmation: password)

  if user.save
    puts "Created user: #{user.email}"
  else
    puts "Failed to create user: #{user.email} - Errors: #{user.errors.full_messages.join(', ')}"
  end
end

users = User.all

20.times do |i|
  user_id = users[i].id
  ship = Ship.new(
    user_id: user_id,
    description: Faker::Lorem.paragraph_by_chars(number: rand(1000..2200)),
    capacity: rand(1..500),
    price_per_day: rand(50..500),
    rating: rand(1.0..10.0),
    name: Faker::Movies::StarWars.vehicle
  )

  if ship.save
    puts "Created ship with ID #{ship.id} and user_id #{user_id}"
  else
    puts "Failed to create ship - Errors: #{ship.errors.full_messages.join(', ')}"
  end
end

ships = Ship.all

20.times do
  start_date = Date.today + rand(1..10)
  end_date = Date.today + rand(11..20)
  status = "pending"
  user_id = users.sample.id
  ship_id = ships.sample.id

  booking = Booking.new(
    start_date: start_date,
    end_date: end_date,
    status: status,
    user_id: user_id,
    ship_id: ship_id
  )

  if booking.save
    puts "Created booking with ID #{booking.id} for user_id #{user_id} and ship_id #{ship_id}"
  else
    puts "Failed to create booking - Errors: #{booking.errors.full_messages.join(', ')}"
  end
end
