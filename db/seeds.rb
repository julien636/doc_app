# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
# Create 100 doctors
100.times do
  Doctor.create(first_name:Faker::Name.first_name, last_name:Faker::Name.last_name)
end
# Create 100 patient
100.times do
  Patient.create(first_name:Faker::Name.first_name, last_name:Faker::Name.last_name)
end
DateTime.new(2001,2,3,4,5,6)
# Create 100 appointment
100.times do
  Appointment.create(date:DateTime.new(2001,2,3,4,5,6), doctor:Doctor.find(rand(1..100)), patient:Patient.find(rand(1..100)))
end
# Create 100 cities
100.times do
  City.create!(city:Faker::Address.city, zip:Faker::Address.zip)
end
# Create 100 specialities
100.times do
  Speciality.create(name:Faker::Commerce.color)
end
# Create 100 specialitie for 100 doctors
100.times do
  JoinTableDoctorSpeciality.create(doctor:Doctor.find(rand(1..100)), speciality:Speciality.find(rand(1..100)))
end
