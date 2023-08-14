# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!(
  email: "Barry@infinityfleetrentals.com",
  password: "password1",
  name: "Admin Barry",
  phone_number: "123-456-7891",
  address: "Address One",
  date_of_birth: Date.new(1990, 1, 1)
)

User.create!(
  email: "karthika@infinityfleetrentals.com",
  password: "password2",
  name: "Admin Karthika",
  phone_number: "123-456-7892",
  address: "Address Two",
  date_of_birth: Date.new(1990, 2, 2)
)

User.create!(
  email: "Caitlyn@infinityfleetrentals.com",
  password: "password3",
  name: "Admin Caitlyn",
  phone_number: "123-456-7893",
  address: "Address Three",
  date_of_birth: Date.new(1990, 3, 3)
)

User.create!(
  email: "Kostas@infinityfleetrentals.com",
  password: "password4",
  name: "Admin kostas",
  phone_number: "123-456-7894",
  address: "Address Four",
  date_of_birth: Date.new(1990, 4, 4)
)
