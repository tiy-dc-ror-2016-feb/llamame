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


25.times do
  Email.create(email: FFaker::Internet.email, emailable_id: rand(1..25), emailable_type: "Company")
end

25.times do |ct|
  ct = ["Cell", "Work", "Home"]
  PhoneNumber.create(number: FFaker::PhoneNumber.short_phone_number, phone_numberable_id: rand(1..25), phone_numberable_type: "Company", number_type: ct[rand(0..2)])
end


# Valid addresses for companies
Address.create(address_1: "1309 5th St NE", city: "Washington", state: "DC", zip_code: "20002", addressable_id: rand(1..25), addressable_type: "Company")
Address.create(address_1: "11403 Amherst Ave", city: "Silver Spring", state: "MD", zip_code: "20902", addressable_id: rand(1..25), addressable_type: "Company")
Address.create(address_1: "1115 East-West Hwy", city: "Silver Spring", state: "MD", zip_code: "20910", addressable_id: rand(1..25), addressable_type: "Company")
Address.create(address_1: "198 Guerrero St", city: "San Francisco", state: "CA", zip_code: "94103", addressable_id: rand(1..25), addressable_type: "Company")
Address.create(address_1: "2450 Clement St", city: "San Francisco", state: "CA", zip_code: "94121", addressable_id: rand(1..25), addressable_type: "Company")
Address.create(address_1: "2009 R St NW", city: "Washington", state: "DC", zip_code: "20009", addressable_id: rand(1..25), addressable_type: "Company")
Address.create(address_1: "151 Calle del Cristo", city: "San Juan", state: "Puerto Rico", zip_code: "00902", addressable_id: rand(1..25), addressable_type: "Company")
Address.create(address_1: "2423 1st Ave", city: "Seattle", state: "WA", zip_code: "98121", addressable_id: rand(1..25), addressable_type: "Company")
Address.create(address_1: "2600 1st Ave", city: "Seattle", state: "WA", zip_code: "98121", addressable_id: rand(1..25), addressable_type: "Company")
Address.create(address_1: "1 Infinite Loop", city: "Cupertino", state: "CA", zip_code: "95014", addressable_id: rand(1..25), addressable_type: "Company")
Address.create(address_1: "618 N Thornton Ave", city: "Orlando", state: "FL", zip_code: "32803", addressable_id: rand(1..25), addressable_type: "Company")
Address.create(address_1: "54 W Plant St", city: "Winter Garden", state: "FL", zip_code: "34787", addressable_id: rand(1..25), addressable_type: "Company")
Address.create(address_1: "148 West Morse Boulevard", city: "Winter Park", state: "FL", zip_code: "32789", addressable_id: rand(1..25), addressable_type: "Company")
Address.create(address_1: "27 Prince St", city: "New York", state: "NY", zip_code: "10012", addressable_id: rand(1..25), addressable_type: "Company")
Address.create(address_1: "320 Rehoboth Ave", city: "Rehoboth Beach", state: "DE", zip_code: "19971", addressable_id: rand(1..25), addressable_type: "Company")
Address.create(address_1: "40 Gibson Hollow Ln", city: "Etlan", state: "VA", zip_code: "22719", addressable_id: rand(1..25), addressable_type: "Company")
Address.create(address_1: "21820 Lassen Peak Hwy", city: "Mineral", state: "CA", zip_code: "96063", addressable_id: rand(1..25), addressable_type: "Company")
Address.create(address_1: "800 NW 6th Ave", city: "Portland", state: "OR", zip_code: "97209", addressable_id: rand(1..25), addressable_type: "Company")
Address.create(address_1: "82229 Overseas Hwy", city: "Islamorada", state: "FL", zip_code: "33036", addressable_id: rand(1..25), addressable_type: "Company")
Address.create(address_1: "929 W Fairbanks Ave", city: "Winter Park", state: "FL", zip_code: "32789", addressable_id: rand(1..25), addressable_type: "Company")
Address.create(address_1: "1151 Tower Blvd", city: "Lake Wales", state: "FL", zip_code: "33853", addressable_id: rand(1..25), addressable_type: "Company")

# Valid addresses for people
Address.create(address_1: "1309 5th St NE", city: "Washington", state: "DC", zip_code: "20002", addressable_id: rand(1..50), addressable_type: "Person")
Address.create(address_1: "11403 Amherst Ave", city: "Silver Spring", state: "MD", zip_code: "20902", addressable_id: rand(1..50), addressable_type: "Person")
Address.create(address_1: "1115 East-West Hwy", city: "Silver Spring", state: "MD", zip_code: "20910", addressable_id: rand(1..50), addressable_type: "Person")
Address.create(address_1: "198 Guerrero St", city: "San Francisco", state: "CA", zip_code: "94103", addressable_id: rand(1..50), addressable_type: "Person")
Address.create(address_1: "2450 Clement St", city: "San Francisco", state: "CA", zip_code: "94121", addressable_id: rand(1..50), addressable_type: "Person")
Address.create(address_1: "2009 R St NW", city: "Washington", state: "DC", zip_code: "20009", addressable_id: rand(1..50), addressable_type: "Person")
Address.create(address_1: "151 Calle del Cristo", city: "San Juan", state: "Puerto Rico", zip_code: "00902", addressable_id: rand(1..50), addressable_type: "Person")
Address.create(address_1: "2423 1st Ave", city: "Seattle", state: "WA", zip_code: "98121", addressable_id: rand(1..50), addressable_type: "Person")
Address.create(address_1: "2600 1st Ave", city: "Seattle", state: "WA", zip_code: "98121", addressable_id: rand(1..50), addressable_type: "Person")
Address.create(address_1: "1 Infinite Loop", city: "Cupertino", state: "CA", zip_code: "95014", addressable_id: rand(1..50), addressable_type: "Person")
Address.create(address_1: "618 N Thornton Ave", city: "Orlando", state: "FL", zip_code: "32803", addressable_id: rand(1..50), addressable_type: "Person")
Address.create(address_1: "54 W Plant St", city: "Winter Garden", state: "FL", zip_code: "34787", addressable_id: rand(1..50), addressable_type: "Person")
Address.create(address_1: "148 West Morse Boulevard", city: "Winter Park", state: "FL", zip_code: "32789", addressable_id: rand(1..50), addressable_type: "Person")
Address.create(address_1: "27 Prince St", city: "New York", state: "NY", zip_code: "10012", addressable_id: rand(1..50), addressable_type: "Person")
Address.create(address_1: "320 Rehoboth Ave", city: "Rehoboth Beach", state: "DE", zip_code: "19971", addressable_id: rand(1..50), addressable_type: "Person")
Address.create(address_1: "40 Gibson Hollow Ln", city: "Etlan", state: "VA", zip_code: "22719", addressable_id: rand(1..50), addressable_type: "Person")
Address.create(address_1: "21820 Lassen Peak Hwy", city: "Mineral", state: "CA", zip_code: "96063", addressable_id: rand(1..50), addressable_type: "Person")
Address.create(address_1: "800 NW 6th Ave", city: "Portland", state: "OR", zip_code: "97209", addressable_id: rand(1..50), addressable_type: "Person")
Address.create(address_1: "82229 Overseas Hwy", city: "Islamorada", state: "FL", zip_code: "33036", addressable_id: rand(1..50), addressable_type: "Person")
Address.create(address_1: "929 W Fairbanks Ave", city: "Winter Park", state: "FL", zip_code: "32789", addressable_id: rand(1..50), addressable_type: "Person")
Address.create(address_1: "1151 Tower Blvd", city: "Lake Wales", state: "FL", zip_code: "33853", addressable_id: rand(1..50), addressable_type: "Person")
