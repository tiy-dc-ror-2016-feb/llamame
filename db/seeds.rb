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

100.times do |list|
  list = ["email", "phone", "voicemail", "in person"]
  Interaction.create(topic: FFaker::Lorem.sentence, medium: list[rand(0..3)], details: FFaker::Lorem.paragraphs.join("\n"), follow_up_date: FFaker::Time.date, person_id: rand(1..50), user_id: rand(1..20))
end

100.times do
  Email.create(email: FFaker::Internet.email, emailable_id: rand(1..50), emailable_type: "Person")
end

100.times do |ct|
  ct = ["Cell", "Work", "Home"]
  PhoneNumber.create(number: FFaker::PhoneNumber.short_phone_number, phone_numberable_id: rand(1..50), phone_numberable_type: "Person", number_type: ct[rand(0..2)])
end

100.times do
  Address.create(address_1: FFaker::AddressUS.street_address, city: FFaker::AddressUS.city, state: FFaker::AddressUS.state_abbr, zip_code: FFaker::AddressUS.zip_code, addressable_id: rand(1..50), addressable_type: "Person")
end

25.times do
  Email.create(email: FFaker::Internet.email, emailable_id: rand(1..25), emailable_type: "Company")
end

25.times do |ct|
  ct = ["Cell", "Work", "Home"]
  PhoneNumber.create(number: FFaker::PhoneNumber.short_phone_number, phone_numberable_id: rand(1..25), phone_numberable_type: "Company", number_type: ct[rand(0..2)])
end

25.times do
  Address.create(address_1: FFaker::AddressUS.street_address, city: FFaker::AddressUS.city, state: FFaker::AddressUS.state_abbr, zip_code: FFaker::AddressUS.zip_code, addressable_id: rand(1..25), addressable_type: "Company")
end
