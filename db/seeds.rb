# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@boss = User.create(email: "admin@admin.com", password: "password", first_name: "Bob", last_name: "the Builder", is_a_boss: true)
@user = User.create(email: "user@user.com", password: "password", first_name: "Bob", last_name: "the User", is_a_boss: false)

20.times do
  User.create(email: FFaker::Internet.email, password: "password", first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name)
end

25.times do
  Company.create(name: FFaker::Company.name, salesperson: FFaker::Name.name)
end

50.times do
  Person.create(first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, company_id: rand(1..25))
end

100.times do
  Note.create(user_id: rand(1..20), noteable_type: "Company", noteable_id: rand(1..25), body: FFaker::Lorem.paragraph)
end

100.times do
  Note.create(user_id: rand(1..20), noteable_type: "Person", noteable_id: rand(1..100), body: FFaker::Lorem.paragraph)
end

100.times do |list|
  list = ["email", "phone", "voicemail", "in person"]
  Interaction.create(topic: FFaker::Lorem.sentence, medium: list[rand(0..3)], details: FFaker::Lorem.paragraphs.join("\n"), follow_up_date: FFaker::Time.date, person_id: rand(1..50), user_id: rand(1..20))
end

100.times do
  Email.create(email: FFaker::Internet.email, emailable_id: rand(1..100), emailable_type: "Person")
end

100.times do
  PhoneNumber.create(number: FFaker::PhoneNumber.phone_number, phone_numberable_id: rand(1..100), phone_numberable_type: "Person")
end

100.times do
  Address.create(address_1: FFaker::AddressUS.street_address, address_2: FFaker::AddressUS.secondary_address, city: FFaker::AddressUS.city, zip_code: FFaker::AddressUS.zip_code, country: FFaker::AddressUS.country, addressable_id: rand(1..100), addressable_type: "Person")
end

25.times do
  Email.create(email: FFaker::Internet.email, emailable_id: rand(1..25), emailable_type: "Company")
end

25.times do
  PhoneNumber.create(number: FFaker::PhoneNumber.phone_number, phone_numberable_id: rand(1..25), phone_numberable_type: "Company")
end

25.times do
  Address.create(address_1: FFaker::AddressUS.street_address, address_2: FFaker::AddressUS.secondary_address, city: FFaker::AddressUS.city, zip_code: FFaker::AddressUS.zip_code, country: FFaker::AddressUS.country, addressable_id: rand(1..25), addressable_type: "Company")
end
