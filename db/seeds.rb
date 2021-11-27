# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Client.destroy_all
Status.destroy_all

puts "Generando usuarios y clientes"

p_status = Status.create(name: "Prospecto")
i_status = Status.create(name: "Muy interesado")
c_status = Status.create(name: "Cliente")

#1
admin = User.create!(
  email: "admin@gmail.com",
  password: "291ABASD932",
)
#2
user1 = User.create!(
  email: "usuario1@gmail.com",
  password: "291ABASD934",
)
#3
user2 = User.create!(
  email: "usuario2@gmail.com",
  password: "281ABASD932",
)

Client.new(
  user: admin,
  status: i_status,
  fullname: Faker::Name.unique.name,
  email: Faker::Internet.unique.free_email,
  phonenumber: Faker::PhoneNumber.cell_phone_with_country_code,
  talks: "1",
  date: Faker::Date.between(from: '2014-01-02', to: '2021-11-27'),
)

Client.new(
  user_id: admin.id,
  status_id: i_status.id,
  fullname: Faker::Name.unique.name,
  email: Faker::Internet.unique.free_email,
  phonenumber: Faker::PhoneNumber.cell_phone_with_country_code,
  talks: "1",
  date: Faker::Date.between(from: '2014-01-02', to: '2021-11-27'),
)
  Client.new(
    fullname: Faker::Name.unique.name,
    status: i_status,
    email: Faker::Internet.unique.free_email,
    phonenumber: Faker::PhoneNumber.cell_phone_with_country_code,
    talks: "1",
    date: Faker::Date.between(from: '2014-01-02', to: '2021-11-27')
  )
  Client.new(
    fullname: Faker::Name.unique.name,
    status: p_status,
    email: Faker::Internet.unique.free_email,
    phonenumber: Faker::PhoneNumber.cell_phone_with_country_code,
    talks: "0",
    date: Faker::Date.between(from: '2014-01-02', to: '2021-11-27')
  )
  Client.new(
    fullname: Faker::Name.unique.name,
    status: p_status,
    email: Faker::Internet.unique.free_email,
    phonenumber: Faker::PhoneNumber.cell_phone_with_country_code,
    talks: "0",
    date: Faker::Date.between(from: '2014-01-02', to: '2021-11-27')
  )
  Client.new(
    fullname: Faker::Name.unique.name,
    status: p_status,
    email: Faker::Internet.unique.free_email,
    phonenumber: Faker::PhoneNumber.cell_phone_with_country_code,
    talks: "0",
    date: Faker::Date.between(from: '2014-01-02', to: '2021-11-27')
  )
  Client.new(
    fullname: Faker::Name.unique.name,
    status: i_status,
    email: Faker::Internet.unique.free_email,
    phonenumber: Faker::PhoneNumber.cell_phone_with_country_code,
    talks: "1",
    date: Faker::Date.between(from: '2014-01-02', to: '2021-11-27')
  )
  Client.new(
    fullname: Faker::Name.unique.name,
    status: p_status,
    email: Faker::Internet.unique.free_email,
    phonenumber: Faker::PhoneNumber.cell_phone_with_country_code,
    talks: "0",
    date: Faker::Date.between(from: '2014-01-02', to: '2021-11-27')
  )
  Client.new(
    fullname: Faker::Name.unique.name,
    status: p_status,
    email: Faker::Internet.unique.free_email,
    phonenumber: Faker::PhoneNumber.cell_phone_with_country_code,
    talks: "0",
    date: Faker::Date.between(from: '2014-01-02', to: '2021-11-27')
  )
  Client.new(
    fullname: Faker::Name.unique.name,
    status: p_status,
    email: Faker::Internet.unique.free_email,
    phonenumber: Faker::PhoneNumber.cell_phone_with_country_code,
    talks: "0",
    date: Faker::Date.between(from: '2014-01-02', to: '2021-11-27')
  )
  Client.new(
    fullname: Faker::Name.unique.name,
    status: p_status,
    email: Faker::Internet.unique.free_email,
    phonenumber: Faker::PhoneNumber.cell_phone_with_country_code,
    talks: "0",
    date: Faker::Date.between(from: '2014-01-02', to: '2021-11-27')
  )

  
puts "Creados #{User.count} usuarios y #{Client.count} clientes."
