# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

100.times do
  Person.create(first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name)
end

@boss = User.create(email: "boss@boss.com", encrypted_password: "pass", first_name: "bob", last_name: "the builder", is_a_boss: true)
